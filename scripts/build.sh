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
	echo "-U, --ubuntu		build or re-build full Ubuntu rootfs or update kernel in rootfs, "
	echo "			use with -f to force a full rebuild" 
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
		$REPOSITORY_DIR/petalinux/scripts/make_${BOARD}_${PROJECT}.sh --vivado-build
	else
		$REPOSITORY_DIR/petalinux/scripts/make_${BOARD}_${PROJECT}.sh --vivado-build --vivado-jobs $VIVADO_JOBS
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

	# Increase user watch (bug workaround)
	sudo sysctl -n -w fs.inotify.max_user_watches=524288

	# Run Avnet scripts
	$REPOSITORY_DIR/petalinux/scripts/make_${BOARD}_${PROJECT}.sh --petalinux-configure

    # Import system-user.dtsi
    rm -f $PETALINUX_PROJECT_DIR/project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi
    cp -f $REPOSITORY_DIR/src/system-user.dtsi $PETALINUX_PROJECT_DIR/project-spec/meta-user/recipes-bsp/device-tree/files/system-user.dtsi

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
	rm -rf $MODULES_DIR
	rm -rf $KERNEL_DEVSRC_DIR

	echo Building PetaLinux project. This will take a while.

	# Remove build state
	rm -f $REPOSITORY_DIR/.petalinux_built

	# Workaround fix for libmetal openamp build bug
	if [ -d $PETALINUX_PROJECT_DIR/build/tmp/work/${BOARD}-xilinx-linux/openamp-fw-echo-testd/${TOOLS_VERSION}.${TOOLS_SUB_VERSION}+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-echo-testd ]
	then
		cp -rf $PETALINUX_PROJECT_DIR/build/tmp/work/${BOARD}-xilinx-linux/openamp-fw-echo-testd/${TOOLS_VERSION}.${TOOLS_SUB_VERSION}+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-echo-testd $PETALINUX_DIR/projects/${AVNET_PROJECT_NAME}/build/tmp/work/${BOARD}-xilinx-linux/openamp-fw-echo-testd/${TOOLS_VERSION}.${TOOLS_SUB_VERSION}+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-echo-testd.new

		cp -rf $PETALINUX_PROJECT_DIR/build/tmp/work/${BOARD}-xilinx-linux/openamp-fw-mat-muld/${TOOLS_VERSION}.${TOOLS_SUB_VERSION}+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-mat-muld $PETALINUX_DIR/projects/${AVNET_PROJECT_NAME}/build/tmp/work/${BOARD}-xilinx-linux/openamp-fw-mat-muld/${TOOLS_VERSION}.${TOOLS_SUB_VERSION}+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-mat-muld.new

		cp -rf $PETALINUX_PROJECT_DIR/build/tmp/work/${BOARD}-xilinx-linux/openamp-fw-rpc-demo/${TOOLS_VERSION}.${TOOLS_SUB_VERSION}+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-rpc-demo $PETALINUX_DIR/projects/${AVNET_PROJECT_NAME}/build/tmp/work/${BOARD}-xilinx-linux/openamp-fw-rpc-demo/${TOOLS_VERSION}.${TOOLS_SUB_VERSION}+gitAUTOINC+08b9f4304d-r0/build/openamp-fw-rpc-demo.new
	fi

	# Increase user watch (bug workaround)
	sudo sysctl -n -w fs.inotify.max_user_watches=524288

	# Run Avnet scripts
	echo Running Avnet build scripts...
	echo

	$REPOSITORY_DIR/petalinux/scripts/make_${BOARD}_${PROJECT}.sh --petalinux-build

	# Export modules
	echo Exporting modules...
	echo

	mkdir -p $MODULES_DIR

	cp -f $PETALINUX_PROJECT_DIR/build/tmp/deploy/images/*/modules--*.tgz \
		$MODULES_DIR

	# Build and export kernel devsrc
	echo Building and exporting kernel devsrc
	echo

	mkdir -p $KERNEL_DEVSRC_DIR

	petalinux-build -c kernel-devsrc -p $PETALINUX_PROJECT_DIR
	cp -f $PETALINUX_PROJECT_DIR/build/tmp/deploy/rpm/$BOARD/kernel-devsrc-1.0-r0.*.rpm \
		$KERNEL_DEVSRC_DIR

	# Build again
	petalinux-build -c avnet-image-full -p $PETALINUX_PROJECT_DIR

	# Build zocl
	petalinux-build -c zocl -p $PETALINUX_PROJECT_DIR

	# Export modules firmware
	sudo rm -rf $TARGET_DIR/rootfs_petalinux
	sudo rm -rf $TARGET_DIR/firmware

	mkdir -p $TARGET_DIR/rootfs_petalinux
	mkdir -p $TARGET_DIR/firmware

	tar xf $PETALINUX_DIR/projects/$AVNET_PROJECT_NAME/images/linux/rootfs.tar.gz -C $TARGET_DIR/rootfs_petalinux
	sudo cp -rp $TARGET_DIR/rootfs_petalinux/lib/firmware/mchp $TARGET_DIR/firmware

	sudo rm -rf $TARGET_DIR/rootfs_petalinux

	# Package boot files
	petalinux-package --boot --fsbl $PETALINUX_DIR/projects/$AVNET_PROJECT_NAME/images/linux/zynqmp_fsbl.elf --fpga $PETALINUX_DIR/projects/$AVNET_PROJECT_NAME/images/linux/system.bit --uboot --force -p $PETALINUX_DIR/projects/$AVNET_PROJECT_NAME

	# Export boot files
	echo Exporting boot files
	echo

	mkdir -p $UBUNTU_BOOT_DIR

	rm -rf $UBUNTU_BOOT_DIR/images/linux/boot.scr 
	rm -rf $UBUNTU_BOOT_DIR/images/linux/image.ub 
	rm -rf $UBUNTU_BOOT_DIR/images/linux/BOOT.BIN 

	cp $PETALINUX_PROJECT_DIR/images/linux/boot.scr $UBUNTU_BOOT_DIR
	cp $PETALINUX_PROJECT_DIR/images/linux/image.ub $UBUNTU_BOOT_DIR
	cp $PETALINUX_PROJECT_DIR/images/linux/BOOT.BIN $UBUNTU_BOOT_DIR

	# Done
	if [ $? -ne 0 ]
	then
		echo Failed.
		echo
		exit 1
	fi

	touch $REPOSITORY_DIR/.petalinux_built
	rm -f $REPOSITORY_DIR/.boot_packaged

	echo Finished building PetaLinux project
}

# Build Ubuntu
build_ubuntu () 
{
	cd $REPOSITORY_DIR

	# Check that conditions are met
	if [ ! -e $REPOSITORY_DIR/.petalinux_built ]
	then
		echo Can not build Ubuntu before PetaLinux project has been built.
		echo Run mp4d-build -P to build PetaLinux project.
		exit 1
	fi

	UPDATE_KERNEL=

	# Check if has already been built
	if [ -e $REPOSITORY_DIR/.ubuntu_built ]
	then
		if [ $FORCE = "false" ]
		then
			echo Ubuntu rootfs has already been built. Will only update kernel.
			echo To force a full rebuild, use the -f option.

			UPDATE_KERNEL="--update-kernel"
		else
			echo Removing existing Ubuntu rootfs...
			echo

			sudo rm -rf $UBUNTU_ROOTFS_DIR
		fi
	fi

	# Remove build state
	rm -f $REPOSITORY_DIR/.ubuntu_built

	# Increase user watch (bug workaround)
	sudo sysctl -n -w fs.inotify.max_user_watches=524288

	# Mkdir
	mkdir -p $UBUNTU_ROOTFS_DIR

	# Run Ubuntu build script
	$SCRIPTS_DIR/build_ubuntu.sh $UPDATE_KERNEL

	# Done
	if [ $? -ne 0 ]
	then
		echo Failed.
		echo
		exit 1
	fi

	touch $REPOSITORY_DIR/.ubuntu_built
	rm -f $REPOSITORY_DIR/.rootfs_packaged

	echo Finished bulding Ubuntu rootfs
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

if [ $BUILD_VIVADO = "false" ] && [ $CONFIG_PETALINUX = "false" ] && [ $BUILD_PETALINUX = "false" ] && [ $BUILD_UBUNTU = "false" ] || [ $BUILD_ALL = "true" ]
then
	BUILD_VIVADO="true"
	CONFIG_PETALINUX="true"
	BUILD_PETALINUX="true"
	BUILD_UBUNTU="true"
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

echo Finished building
