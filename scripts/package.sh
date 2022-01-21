#!/bin/bash
#
# This script packages the build outputs.
# Options can be specified to
#	1)	package the boot files to the BOOT partition;
#	2)	package the rootfs to the rootfs partition; or

set -e

[[ $0 != $BASH_SOURCE ]] && SCRIPTS_DIR=$(realpath $PWD/$BASH_SOURCE | xargs dirname) || SCRIPTS_DIR=$(realpath $0 | xargs dirname)
source $SCRIPTS_DIR/settings.sh >> /dev/null

##########################################################
# Functions

# Help
Help()
{
	echo "Package the MPSoC4Drones build products."
	echo 
	echo "Syntax: m4d-package [-A|B|f|h]"
	echo "options:"
	echo "-A, --all		package boot files and rootfs onto the sd card partitions"
	echo "-B, --boot		package the boot files onto the sd card BOOT partition"
	echo "--rootfs		package the root filesystem onto the sd card rootfs partition"
	echo "--mount-dir MOUNT_DIR	MOUNT_DIR specifies the directory containing the \"BOOT\" and \"rootfs\" mount points,"
	echo "			MOUNT_DIR/BOOT and MOUNT_DIR/rootfs. Defaults to /media/$USER"
	echo "--boot-dir BOOT_DIR	BOOT_DIR specifies the full BOOT partition mount point path. "
	echo "			Takes precedence over MOUNT_DIR if specified. Defaults to /media/$USER/BOOT"
	echo "--rootfs-dir ROOTFS_DIR	ROOTFS_DIR specifies the full rootfs partition mount point path. "
	echo "			Takes precedence over MOUNT_DIR if specified. Defaults to /media/$USER/rootfs"
	echo "-I, --image		create the full image"
	echo "-f, --force		overwrite existing work without prompting"
	echo
	echo "-h, --help		show this message"
	echo
}

# Package boot files
package_boot ()
{
	cd $REPOSITORY_DIR

	# Check that conditions are met
	if [ ! -e $REPOSITORY_DIR/.petalinux_built ]
	then
		echo Can not package boot files before PetaLinux project has been built.
		echo Run mp4d-build -P to build PetaLinux project.
		exit 1
	fi

	if [ ! -d $BOOT_DIR ]
	then
		echo BOOT mount point $BOOT_DIR does not exist or is not a directory.
		echo Specfiy another BOOT mount point with the --boot-dir BOOT_DIR argument.
		exit 1
	fi

	# Check if has already been packaged
	if [ -e $REPOSITORY_DIR/.boot_packaged ]
	then
		if [ $FORCE = "false" ]
		then
			echo Boot files have already been packaged.
			while true; do
				read -p "Continue (Y/n)? " yn
				case $yn in
					[Yy]* ) echo ; break;;
					[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
					* ) echo "Please answer (Y/n)" ;;
				esac
			done
		fi

		echo Will overwrite existing packaged boot files.
		echo
	fi

	# Remove
	rm -f $REPOSITORY_DIR/.boot_packaged

	echo Removing existing boot files...
	echo
	rm -f $BOOT_DIR/boot.scr $BOOT_DIR/image.ub $BOOT_DIR/BOOT.BIN

	# Copy boot files
	echo Copying boot files...
	echo
	cp $UBUNTU_BOOT_DIR/boot.scr $BOOT_DIR
	cp $UBUNTU_BOOT_DIR/image.ub $BOOT_DIR
	cp $UBUNTU_BOOT_DIR/BOOT.BIN $BOOT_DIR

	# Done
	touch $REPOSITORY_DIR/.boot_packaged

	echo Successfully packaged boot files
}

# Package rootfs
package_rootfs ()
{
	cd $REPOSITORY_DIR

	# Check that conditions are met
	if [ ! -e $REPOSITORY_DIR/.ubuntu_built ]
	then
		echo Can not package rootfs before Ubuntu has been built.
		echo Run mp4d-build -U to build Ubuntu.
		exit 1
	fi

	if [ ! -d $ROOTFS_DIR ]
	then
		echo rootfs mount point $ROOTFS_DIR does not exist or is not a directory.
		echo Specfiy another rootfs mount point with the --rootfs-dir ROOTFS_DIR argument.
		exit 1
	fi

	# Check if has already been packaged
	if [ -e $REPOSITORY_DIR/.rootfs_packaged ]
	then
		if [ $FORCE = "false" ]
		then
			echo rootfs has already been packaged.
			while true; do
				read -p "Continue (Y/n)? " yn
				case $yn in
					[Yy]* ) echo ; break;;
					[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
					* ) echo "Please answer (Y/n)" ;;
				esac
			done
		fi

		echo Will overwrite existing packaged rootfs.
		echo
	fi

	# Remove
	rm -f $REPOSITORY_DIR/.rootfs_packaged

	echo Removing existing rootfs...
	echo
	sudo rm -rf $ROOTFS_DIR/*

	# Copy rootfs
	echo Copying rootfs...
	echo
	sudo cp -rp $UBUNTU_ROOTFS_DIR/* $ROOTFS_DIR
	
	# Sync
	echo Synchronizing, this might take a while...
	echo
	sync

	# Done
	touch $REPOSITORY_DIR/.rootfs_packaged

	echo Successfully packaged rootfs
}

# Create image
create_image() 
{
	echo "Create image has not been implemented yet :-("
	echo
}

##########################################################
# Main

# Parse arguments
PACKAGE_ALL="false"
PACKAGE_BOOT="false"
PACKAGE_ROOTFS="false"
CREATE_IMAGE="false"
MOUNT_DIR=/media/$USER
BOOT_DIR=
ROOTFS_DIR=
FORCE="false"

while [[ $# -gt 0 ]]; do
  key="$1"

	case $key in
    	-A|--all)
			PACKAGE_ALL="true"
      		shift # past value
      		;;
    	-B|--boot)
			PACKAGE_BOOT="true"
      		shift # past value
      		;;
    	--rootfs)
			PACKAGE_ROOTFS="true"
      		shift # past value
      		;;
    	--mount-dir)
			MOUNT_DIR=$2
      		shift # past value
			shift # past argument
      		;;
    	--boot-dir)
			BOOT_DIR=$2
      		shift # past value
			shift # past argument
      		;;
    	--rootfs-dir)
			ROOTFS_DIR=$2
      		shift # past value
			shift # past argument
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

if [ $PACKAGE_BOOT = "false" ] && [ $PACKAGE_ROOTFS = "false" ] && [ $CREATE_IMAGE = "false" ] || [ $PACKAGE_ALL = "true" ]
then
	PACKAGE_BOOT="true"
	PACKAGE_ROOTFS="true"
	#CREATE_IMAGE="true"
fi

if [ -z "$BOOT_DIR" ]
then
	BOOT_DIR=$MOUNT_DIR/BOOT
fi

if [ -z "$ROOTFS_DIR" ]
then
	ROOTFS_DIR=$MOUNT_DIR/rootfs
fi

# Run functionality
if [ $PACKAGE_BOOT = "true" ]
then
	package_boot
fi

if [ $PACKAGE_ROOTFS = "true" ]
then
	package_rootfs
fi

if [ $CREATE_IMAGE = "true" ]
then
	create_image
fi

echo Finished packaging
