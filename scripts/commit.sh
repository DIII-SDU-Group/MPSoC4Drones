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
	echo "--msg MSG		add commit message MSG instead of default msg"
	echo "--clean			cleans the project, will remove uncommitted files"
	echo "-f, --force		will not prompt the user before cleaning project"
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

	echo Comitting changes to Vivado project...
	echo
    cd $HDL_DIR

	echo Checking for VHDL source file conflicts...
	echo
	cp_srcs=
	project_srcs=$( find $VIVADO_PROJECT_DIR/${BOARD}_${PROJECT}.srcs/sources_1 -name *.vhd )
	for src in $project_srcs
	do
		f=$( basename -- $src )

		if [ -f $REPOSITORY_DIR/src/$f ]; then
			if [ $FORCE = "false" ]
			then
				echo A conflicting VHDL source file was found. File $f exists both in
				echo $src 
				echo and
				echo $REPOSITORY_DIR/src/$f
				echo Any changes should be made to $src.
				echo The file $REPOSITORY_DIR/src/$f will be removed.  
				while true; do
					read -p "Continue (Y7n)? " yn
					case $yn in
						[Yy]* ) rm -f $REPOSITORY_DIR/src/$f; echo ; break;;
						[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
						* ) echo "Please answer (Y/n)" ;;
					esac
				done
			else
				rm -f $REPOSITORY_DIR/src/$f
			fi
		fi

		cp_srcs="$cp_srcs $f"
	done

    # Changes to HDL sources
	echo Retrieving VHDL source files...
	echo
    find $VIVADO_PROJECT_DIR/${BOARD}_${PROJECT}.srcs/sources_1 -name *.vhd -exec cp -f {} $REPOSITORY_DIR/src/ \;

    # Changes to constraints
	echo Updating changes made to constraints file ${BOARD}_${PROJECT}.xdc...
	echo
    rm -f $REPOSITORY_DIR/src/${BOARD}_${PROJECT}.xdc
    cp $VIVADO_PROJECT_DIR/${BOARD}_${PROJECT}.srcs/constrs_1/imports/src/${BOARD}_${PROJECT}.xdc $REPOSITORY_DIR/src/${BOARD}_${PROJECT}.xdc

    # Changes to block design
	echo Exporting block design as tcl script...
	echo
    rm -f $REPOSITORY_DIR/src/bd.tcl
    vivado -mode batch -source $SCRIPTS_DIR/export_bd.tcl -tclargs $VIVADO_PROJECT_DIR/${BOARD}_${PROJECT}.xpr $VIVADO_PROJECT_DIR/${BOARD}_${PROJECT}.srcs/sources_1/bd/${BOARD}_${PROJECT}/${BOARD}_${PROJECT}.bd $REPOSITORY_DIR/src/bd.tcl

	# Enter HDL repo
	cd $HDL_DIR

    if [ $ALL = "true" ]; then
        git add -A

		# Update patch
		echo Updating HDL patch
		echo

		git commit -m "Updating patch" 2> /dev/null
		git tag -f $DIII_REPO_TAG 2> /dev/null
		git diff --binary $AVNET_REPO_TAG $DIII_REPO_TAG > $PATCHES_DIR/hdl_repo.patch 2> /dev/null
		git checkout $AVNET_REPO_TAG && git checkout $DIII_REPO_TAG 2> /dev/null
    fi

    # Commit changes 
	echo Comitting changes
	echo

    cd $REPOSITORY_DIR

	git add $PATCHES_DIR/hdl_repo.patch $REPOSITORY_DIR/ip/* $REPOSITORY_DIR/src/*

	if [ -z "$COMMIT_MSG" ]; then
		MSG="Updated Vivado project, automatic commit"
	else
		MSG=$COMMIT_MSG
	fi
	git commit -m "$MSG" $PATCHES_DIR/hdl_repo.patch $REPOSITORY_DIR/src/* $REPOSITORY_DIR/ip/*

	# Finished
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

	echo Comitting changes to meta-avnet...
	echo

    # Add files
	echo Adding files...
	echo

    cd $REPOSITORY_DIR/meta-avnet/

    git add $REPOSITORY_DIR/meta-avnet/recipes-bsp/device-tree/files/u96v2-sbc/system-bsp.dtsi
    git add $REPOSITORY_DIR/meta-avnet/recipes-kernel/linux/files/u96v2-sbc/*.cfg

    if [ $ALL = "true" ]; then
        git add -A
    fi

    # Update patch
	echo Updating patch...
	echo

    git commit -m "Updating patch" 2> /dev/null
    git tag -f $DIII_REPO_TAG 2> /dev/null
    git diff --binary $AVNET_REPO_TAG $DIII_REPO_TAG > $PATCHES_DIR/meta_avnet_repo.patch 2> /dev/null
    git checkout $AVNET_REPO_TAG && git checkout $DIII_REPO_TAG 2> /dev/null

    # Commit changes to patch
	echo Committing changes to patch...
	echo

    cd $REPOSITORY_DIR
	if [ -z "$COMMIT_MSG" ]; then
		MSG="Updated meta-avnet, automatic commit"
	else
		MSG=$COMMIT_MSG
	fi
	git commit -m "$MSG" $PATCHES_DIR/meta_avnet_repo.patch

	# Finished
    echo Finished committing meta-avnet changes
    echo
}

# Commit changes made to Ubuntu setup
commit_ubuntu ()
{
    cd $REPOSITORY_DIR

	echo Committing changes to Ubuntu setup scripts...
	echo

	if [ -z "$COMMIT_MSG" ]; then
		MSG="Updated Ubuntu setup scripts, automatic commit"
	else
		MSG=$COMMIT_MSG
	fi

	add_list="$SCRIPTS_DIR/ubuntu/*"
	
	if [ $ALL = "true" ]; then
		add_list="$add_list $SCRIPTS_DIR/build_ubuntu.sh"
	fi

	git add $add_list

	git commit -m "$MSG" $commit_list 2> /dev/null

    echo Finished comitting Ubuntu setup scripts changes
    echo
}

# Build Ubuntu
clean_project () 
{
    cd $REPOSITORY_DIR

	if [ $FORCE = "false" ]
	then
		echo This action will clean the entire MPSoC4Drones project by deleting
		echo all generated outputs, build products, and uncommitted files.
		while true; do
			read -p "Are you sure you want to continue (Y/n)? " yn
			case $yn in
				[Yy]* ) echo ; break;;
				[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
				* ) echo "Please answer (Y/n)" ;;
			esac
		done
	fi

	echo Cleaning project...
	echo

	sudo git clean -f 
	sudo git clean -f -d
	sudo git clean -f -x

	sudo rm -rf bdf hdl meta-avnet petalinux PYNQ target

	rm -f .git_setup \
	.vivado_setup \
	.petalinux_setup \
	.vivado_built \
	.petalinux_configured \
	.petalinux_built \
	.ubuntu_built \
	.boot_packaged \
	.rootfs_packaged

    echo Finished cleaning project
    echo
}

##########################################################
# Main

# Parse arguments
ALL="false"
COMMIT_VIVADO="false"
COMMIT_META_AVNET="false"
COMMIT_UBUNTU="false"
CLEAN="false"
FORCE="false"
COMMIT_MSG=

while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
        -A|--all)
            COMMIT_ALL="true"
            shift # past value
            ;;
        -V|--vivado)
            COMMIT_VIVADO="true"
            shift # past value
            ;;
        -M|--meta-avnet)
            COMMIT_META_AVNET="true"
            shift # past value
            ;;
        -U|--ubuntu)
            COMMIT_UBUNTU="true"
            shift # past value
            ;;
        --msg)
            COMMIT_MSG=$2
            shift # past value
            shift # past arg
            ;;
        --clean)
            CLEAN="true"
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

if [ $COMMIT_VIVADO = "false" ] && [ $COMMIT_META_AVNET = "false" ] && [ $COMMIT_UBUNTU = "false" ] && [ $CLEAN = "false" ] || [ $ALL = "true" ]
then
	COMMIT_VIVADO="true"
	COMMIT_META_AVNET="true"
	COMMIT_UBUNTU="true"
fi

# Run functionality
if [ $COMMIT_VIVADO = "true" ]
then
    commit_vivado
fi

if [ $COMMIT_META_AVNET = "true" ]
then
    commit_meta_avnet
fi

if [ $COMMIT_UBUNTU = "true" ]
then
    commit_ubuntu
fi

if [ $CLEAN = "true" ]
then
    clean_project
fi

echo Finished commit
