#!/bin/bash
#
# This script builds the project.
# Options can be specified to
#	1)	clear runs and build the hardware;
#	2)	export hardware specification to PetaLinux project;
#	3) 	build PetaLinux project;
#	4)  build Ubuntu root filesystem;
#	5)	or all of the above.

set -e

[[ $0 != $BASH_SOURCE ]] && SCRIPTS_DIR=$(realpath $PWD/$BASH_SOURCE | xargs dirname) || SCRIPTS_DIR=$(realpath $0 | xargs dirname)
source $SCRIPTS_DIR/settings.sh >> /dev/null

##########################################################
# Functions

# Help
Help()
{
	echo "Build the MPSoC4Drones project outputs."
	echo 
	echo "Syntax: m4d-build [-A|V|P|U|f|h]"
	echo "options:"
	echo "-A, --all		build or re-build all project outputs sequentially (default)"
	echo "-V, --vivado		build or re-build Vivado project hardware specification"
	echo "--vivado-jobs	N	number of jobs N for Vivado to use for hardware build"
	echo "--petalinux-config	configure or re-configure PetaLinux project, import hardware specification"
	echo "-P, --petalinux		build or re-build full PetaLinux project outputs"
	echo "-U, --ubuntu		build or re-build full Ubuntu rootfs - requires sudo" 
	echo "--ubuntu-import-modules"
	echo "			import PetaLinux kernel modules to Ubuntu rootfs"
	echo "-f, --force		overwrite existing work without prompting"
	echo
	echo "-h, --help		show this message"
	echo
}

# Build hardware
build_vivado ()
{
	cd $REPOSITORY_DIR

	# Check that conditions are met
	if [ ! -e $REPOSITORY_DIR/.git_setup ] || [ ! -e $REPOSITORY_DIR/.vivado_setup ] || [ ! -e $REPOSITORY_DIR/.petalinux_setup ]
	then
		echo Can not build hardware before project has been set up.
		echo Run mp4d-setup to setup project structure.
		exit 1
	fi

	# Check if has already been built
	if [ -e $REPOSITORY_DIR/.vivado_built ]
	then
		if [ $FORCE = "false" ]
		then
			echo Vivado project has already been built. Output products will be overwritten.
			while true; do
				read -p "Continue (Y/n)? " yn
				case $yn in
					[Yy]* ) echo ; break;;
					[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
					* ) echo "Please answer (Y/n)" ;;
				esac
			done
		fi

		echo Will overwrite existing Vivado output products.
		echo
	fi

	# Remove build state
	rm -f $REPOSITORY_DIR/.vivado_built

	# Run Avnet Vivado build scripts
	if [ -z $VIVADO_JOBS ] 
	then
		$REPOSITORY_DIR/petalinux/scripts/make_u96v2_sbc_mp4d.sh --vivado-build
	else
		$REPOSITORY_DIR/petalinux/scripts/make_u96v2_sbc_mp4d.sh --vivado-build --vivado-jobs $VIVADO_JOBS
	fi

	# Done
	if [ $? -ne 0 ]
	then
		echo Failed.
		echo
		exit 1
	fi

	touch $REPOSITORY_DIR/.vivado_built
	rm -f $REPOSITORY_DIR/.petalinux_configured

	echo Finished building hardware
	echo
}

# Configure PetaLinux
configure_petalinux () 
{
	cd $REPOSITORY_DIR

	# Check that conditions are met
	if [ ! -e $REPOSITORY_DIR/.vivado_built ]
	then
		echo Can not configure PetaLinux project before hardware has been built.
		echo Run mp4d-build -V to build hardware specification.
		exit 1
	fi

	# Check if has already been configured
	if [ -e $REPOSITORY_DIR/.petalinux_configured ]
	then
		if [ $FORCE = "false" ]
		then
			echo PetaLinux project has already been configured.
			while true; do
				read -p "Continue (Y/n)? " yn
				case $yn in
					[Yy]* ) echo ; break;;
					[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
					* ) echo "Please answer (Y/n)" ;;
				esac
			done
		fi

		echo Will overwrite existing PetaLinux project configuration.
		echo
	fi

	# Remove build state
	rm -f $REPOSITORY_DIR/.petalinux_configured

	# Run Avnet scripts
	$REPOSITORY_DIR/petalinux/scripts/make_u96v2_sbc_mp4d.sh --petalinux-configure

	# Done
	if [ $? -ne 0 ]
	then
		echo Failed.
		echo
		exit 1
	fi

	touch $REPOSITORY_DIR/.petalinux_configured
	rm -f $REPOSITORY_DIR/.petalinux_built

	echo Finished configuring PetaLinux project
	echo
}

# Build PetaLinux
build_petalinux ()
{
	cd $REPOSITORY_DIR

	# Check that conditions are met
	if [ ! -e $REPOSITORY_DIR/.petalinux_configured ]
	then
		echo Can not build PetaLinux project before it has been configured.
		echo Run mp4d-build --petalinux-config to configure PetaLinux project and import latest hardware.
		exit 1
	fi

	# Check if has already been built
	if [ -e $REPOSITORY_DIR/.petalinux_built ]
	then
		if [ $FORCE = "false" ]
		then
			echo PetaLinux project has already been built.
			while true; do
				read -p "Continue (Y/n)? " yn
				case $yn in
					[Yy]* ) echo ; break;;
					[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
					* ) echo "Please answer (Y/n)" ;;
				esac
			done
		fi

		echo Will overwrite existing PetaLinux project build.
		echo
	fi

	rm -rf $UBUNTU_BOOT_DIR

	echo Building PetaLinux project. This will take a while.

	# Remove build state
	rm -f $REPOSITORY_DIR/.petalinux_built

	# Workaround fix for libmetal openamp build bug
	cp -r $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/build/tmp/work/u96v2_sbc-xilinx-linux/openamp-fw-echo-testd/2020.2+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-echo-testd $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/build/tmp/work/u96v2_sbc-xilinx-linux/openamp-fw-echo-testd/2020.2+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-echo-testd.new 2> /dev/null

	cp -r $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/build/tmp/work/u96v2_sbc-xilinx-linux/openamp-fw-mat-muld/2020.2+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-mat-muld $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/build/tmp/work/u96v2_sbc-xilinx-linux/openamp-fw-mat-muld/2020.2+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-mat-muld.new 2> /dev/null

	cp -r $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/build/tmp/work/u96v2_sbc-xilinx-linux/openamp-fw-rpc-demo/2020.2+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-rpc-demo $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/build/tmp/work/u96v2_sbc-xilinx-linux/openamp-fw-rpc-demo/2020.2+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-rpc-demo.new 2> /dev/null

	# Run Avnet scripts
	$REPOSITORY_DIR/petalinux/scripts/make_u96v2_sbc_mp4d.sh --petalinux-build

	# Move boot files
	mkdir $UBUNTU_BOOT_DIR

	cp $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/images/linux/boot.scr $UBUNTU_BOOT_DIR
	cp $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/images/linux/image.ub $UBUNTU_BOOT_DIR
	cp $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/images/linux/BOOT.BIN $UBUNTU_BOOT_DIR

	# Done
	if [ $? -ne 0 ]
	then
		echo Failed.
		echo
		exit 1
	fi

	touch $REPOSITORY_DIR/.petalinux_built
	rm -f $REPOSITORY_DIR/.ubuntu_modules_imported
	rm -f $REPOSITORY_DIR/.boot_packaged
	rm -f $REPOSITORY_DIR/.kernel_modules_packaged

	echo Finished building PetaLinux project
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
