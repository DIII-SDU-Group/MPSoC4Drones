#!/bin/bash
#
# This script commits changes to the project.
# Options can be specified to
#	1)	commit changes made to the Vivado project;
#	2)	commit changes made to the meta-avnet layer;
#	3) 	commit changes made to the Ubuntu build;
#	4)  clean the project;
#	5)	or all of the above.

set -e

[[ $0 != $BASH_SOURCE ]] && SCRIPTS_DIR=$(realpath $PWD/$BASH_SOURCE | xargs dirname) || SCRIPTS_DIR=$(realpath $0 | xargs dirname)
source $SCRIPTS_DIR/settings.sh >> /dev/null

##########################################################
# Functions

# Help
Help()
{
    echo "Commit changes made to the MPSoC4Drones project."
    echo 
    echo "Syntax: m4d-commit [-A|V|M|U|h]"
    echo "options:"
    echo "-A, --all		commit all changes made in sub projects, including untracked files"
    echo "-V, --vivado		commit changes made to the Vivado project and hdl repo"
    echo "-M, --meta-avnet	commit changes made to the meta-avnet layers"
    echo "-U, --ubuntu		commit changes made to the Ubuntu setup" 
    echo
    echo "-h, --help		show this message"
    echo
}

# Commit Vivado project changes
commit_vivado ()
{
    cd $REPOSITORY_DIR

    # Check that conditions are met
    if [ ! -e $REPOSITORY_DIR/.git_setup ] || [ ! -e $REPOSITORY_DIR/.vivado_setup ]
    then
        echo Can not commit changes made to the Vivado project before the project has been setup.
        echo Run mp4d-setup to setup project structure.
        exit 1
    fi

    cd $HDL_DIR

    # Changes to constraints
    rm -f $HDL_DIR/boards/u96v2_sbc/mp4d/u96v2_sbc_mp4d.xdc
    cp $HDL_DIR/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.srcs/constrs_1/imports/mp4d/u96v2_sbc_mp4d.xdc $HDL_DIR/boards/u96v2_sbc/mp4d/u96v2_sbc_mp4d.xdc

    # Changes to block design
    rm -f $HDL_DIR/boards/u96v2_sbc/mp4d/bd.tcl
    vivado -mode batch -source $SCRIPTS_DIR/export_bd.tcl \ 
        -tclargs $HDL_DIR/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xpr \
        $HDL_DIR/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.srcs/sources_1/bd/u96v2_sbc_mp4d/u96v2_sbc_mp4d.bd \
        $HDL_DIR/boards/u96v2_sbc/mp4d/bd.tcl

    # Changes to HDL sources
    find $HDL_DIR/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.srcs/sources_1 -name *.vhd -exec cp -f {} $HDL_DIR/src/ \

    # Git add
    git add $HDL_DIR/boards/u96v2_sbc/mp4d/u96v2_sbc_mp4d.xdc
    git add $HDL_DIR/boards/u96v2_sbc/mp4d/bd.tcl
    git add $HDL_DIR/ip/*
    git add $HDL_DIR/src/*

    if [ $ALL = "true" ]; then
        git add -A
    fi

    # Update patch
    git commit -m "Updating patch"
    git tag -f $DIII_REPO_TAG
    git diff --binary $AVNET_REPO_TAG $DIII_REPO_TAG > $PATCHES_DIR/hdl_repo.patch
    git checkout $AVNET_REPO_TAG && git checkout $DIII_REPO_TAG

    # Finished 
    cd $REPOSITORY_DIR

    echo Finished committing Vivado project changes
    echo
}

# Commit meta-avnet layers changes
commit_meta_avnet () 
{
    cd $REPOSITORY_DIR

    # Check that conditions are met
    if [ ! -e $REPOSITORY_DIR/.git_setup ]
    then
        echo Can not commit changes to meta-avnet layers before repositories has been setup.
        echo Run mp4d-setup -G to setup git repositories.
        exit 1
    fi

    # Add files
    cd $REPOSITORY_DIR/meta-avnet/

    git add $REPOSITORY_DIR/meta-avnet/recipes-bsp/device-tree/files/u96v2_sbc/system-bsp.dtsi
    git add $REPOSITORY_DIR/meta-avnet/recipes-kernel/linux/files/u96v2_sbc/*.cfg

    if [ $ALL = "true" ]; then
        git add -A
    fi

    # Update patch
    git commit -m "Updating patch"
    git tag -f $DIII_REPO_TAG
    git diff --binary $AVNET_REPO_TAG $DIII_REPO_TAG > $PATCHES_DIR/meta_avnet_repo.patch
    git checkout $AVNET_REPO_TAG && git checkout $DIII_REPO_TAG

    # Finished
    cd $REPOSITORY_DIR

    echo Finished configuring PetaLinux project
    echo
}

# Commit changes made to Ubuntu setup
commit_ubuntu ()
{
    cd $REPOSITORY_DIR

    # Commit changes made to scripts
    # Commit all if ALL=true

    echo Finished building PetaLinux project
    echo
}

# Build Ubuntu
build_ubuntu () 
{
    cd $REPOSITORY_DIR

    # No conditions

    # Check if has already been built
    if [ -a $UBUNTU_ROOTFS_DIR ] || [ -e $REPOSITORY_DIR/.ubuntu_built ]
    then
        if [ $FORCE = "false" ]
        then
            echo Ubuntu rootfs has already been built. Contents will be overwritten.
            while true; do
                read -p "Continue (Y/n)? " yn
                case $yn in
                    [Yy]* ) echo ; break;;
                    [Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
                    * ) echo "Please answer (Y/n)" ;;
                esac
            done
        fi

        echo Removing existing Ubuntu rootfs...
        echo

        sudo rm -rf $UBUNTU_ROOTFS_DIR
    fi

    # Remove build state
    rm -f $REPOSITORY_DIR/.ubuntu_built

    # Mkdir
    mkdir -p $UBUNTU_ROOTFS_DIR

    echo Building Ubuntu rootfs, will take a while...
    echo

    # Run Ubuntu build script
    $SCRIPTS_DIR/build_ubuntu.sh

    # Done
    if [ $? -ne 0 ]
    then
        echo Failed.
        echo
        exit 1
    fi

    touch $REPOSITORY_DIR/.ubuntu_built
    rm -f $REPOSITORY_DIR/.ubuntu_modules_imported
    rm -f $REPOSITORY_DIR/.rootfs_packaged
    rm -f $REPOSITORY_DIR/.kernel_modules_packaged

    echo Finished bulding Ubuntu rootfs
    echo
}

# Ubuntu import modules
ubuntu_import_modules ()
{
    cd $REPOSITORY_DIR

    # Check that conditions are met
    if [ ! -e $REPOSITORY_DIR/.petalinux_built ] || [ ! -e $REPOSITORY_DIR/.ubuntu_built ]
    then
        echo Can not import kernel modules from PetaLinux to Ubuntu before both have been built.
        echo Run mp4d-build -P to build PetaLinux and mp4d-build -U to build Ubuntu.
        exit 1
    fi

    # Check if has already been imported
    if [ -e $REPOSITORY_DIR/.ubuntu_modules_imported ]
    then
        if [ $FORCE = "false" ]
        then
            echo Kernel modules has already been imported to Ubuntu rootfs from PetaLinux. Imported modules will be overwritten.
            while true; do
                read -p "Continue (Y/n)? " yn
                case $yn in
                    [Yy]* ) echo ; break;;
                    [Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
                    * ) echo "Please answer (Y/n)" ;;
                esac
            done
        fi

        echo Removing existing kernel modules...
        echo

        sudo rm -rf $UBUNTU_ROOTFS_DIR/lib/modules
        sudo rm -rf $UBUNTU_ROOTFS_DIR/lib/firmware/mchp
        rm -f $REPOSITORY_DIR/.ubuntu_modules_imported
    fi

    echo Importing kernel modules...
    echo

    # Remove build state
    rm -f $REPOSITORY_DIR/.ubuntu_modules_imported

    # Temporarily extract PetaLinux rootfs
    mkdir $TARGET_DIR/rootfs_petalinux
    tar xf $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/images/linux/rootfs.tar.gz -C $TARGET_DIR/rootfs_petalinux

    sudo cp -r $TARGET_DIR/rootfs_petalinux/lib/modules $TARGET_DIR/rootfs/lib/
    sudo cp -rp $TARGET_DIR/rootfs_petalinux/lib/firmware/mchp $TARGET_DIR/rootfs/lib/firmware/mchp

    sudo rm -rf $TARGET_DIR/rootfs_petalinux

    # Done
    touch $REPOSITORY_DIR/.ubuntu_modules_imported
    rm -f $REPOSITORY_DIR/.kernel_modules_packaged

    echo Imported kernel modules to Ubuntu
    echo
}

##########################################################
# Main

# Parse arguments
BUILD_ALL="false"
BUILD_VIVADO="false"
VIVADO_JOBS=
CONFIG_PETALINUX="false"
BUILD_PETALINUX="false"
BUILD_UBUNTU="false"
UBUNTU_IMPORT_MODULES="false"
FORCE="false"

while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
        -A|--all)
            BUILD_ALL="true"
            shift # past value
            ;;
        -V|--vivado)
            BUILD_VIVADO="true"
            shift # past value
            ;;
        --vivado-jobs)
            VIVADO_JOBS=$2
            shift # past value
            shift # past argument
            ;;
        --petalinux-config)
            CONFIG_PETALINUX="true"
            shift # past value
            ;;
        -P|--petalinux)
            BUILD_PETALINUX="true"
            shift # past value
            ;;
        -U|--ubuntu)
            BUILD_UBUNTU="true"
            shift # past value
            ;;
        --ubuntu-import-modules)
            UBUNTU_IMPORT_MODULES="true"
            shift # past value
            ;;
        -f|--force)
            FORCE="true"
            shift # past value
            ;;
        -h|--help)
            Help
            exit
            ;;
        *)    # unknown option
            echo Unknown option $1 
            echo
            Help
            exit 1
            ;;
    esac
done

if [ $BUILD_VIVADO = "false" ] && [ $CONFIG_PETALINUX = "false" ] && [ $BUILD_PETALINUX = "false" ] && [ $BUILD_UBUNTU = "false" ] && [ $UBUNTU_IMPORT_MODULES = "false" ] || [ $BUILD_ALL = "true" ]
then
    BUILD_VIVADO="true"
    CONFIG_PETALINUX="true"
    BUILD_PETALINUX="true"
    BUILD_UBUNTU="true"
    UBUNTU_IMPORT_MODULES="true"
fi

# Run functionality
if [ $BUILD_VIVADO = "true" ]
then
    build_vivado
fi

if [ $CONFIG_PETALINUX = "true" ]
then
    configure_petalinux
fi

if [ $BUILD_PETALINUX = "true" ]
then
    build_petalinux
fi

if [ $BUILD_UBUNTU = "true" ]
then
    build_ubuntu
fi

if [ $UBUNTU_IMPORT_MODULES = "true" ]
then
    ubuntu_import_modules
fi

echo Finished building