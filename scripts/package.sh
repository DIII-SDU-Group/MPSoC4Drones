#!/bin/bash
#
# This script packages the build outputs.
# Options can be specified to
#	1)	package the boot files;
#	2)	or create the full image.

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
	echo "Syntax: m4d-package [-A|B|I|f|h]"
	echo "options:"
	echo "-A, --all		package or re-package boot files and create full image (default)"
	echo "-B, --boot		package or re-package the boot files"
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

	# Check if has already been packaged
	if [ -e $REPOSITORY_DIR/.boot_files_packaged ]
	then
		if [ $FORCE = "false" ]
		then
			echo Boot files have already been packaged. They will be overwritten.
			while true; do
				read -p "Continue (Y/n)? " yn
				case $yn in
					[Yy]* ) echo ; break;;
					[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
					* ) echo "Please answer (Y/n)" ;;
				esac
			done
		fi

		echo Will overwrite existing boot files.
		echo
	fi

	# Remove boot files packaged state
	rm -f $REPOSITORY_DIR/.boot_files_packaged

	# Package boot files
	mkdir -p $TARGET_DIR/BOOT
	rm -f $TARGET_DIR/BOOT/boot.scr
	rm -f $TARGET_DIR/BOOT/image.ub
	rm -f $TARGET_DIR/BOOT/BOOT.BIN

	cp $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/images/linux/boot.scr $TARGET_DIR/BOOT/
	cp $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/images/linux/image.ub $TARGET_DIR/BOOT/
	cp $PETALINUX_DIR/projects/u96v2_sbc_mp4d_2020_2/images/linux/BOOT.BIN $TARGET_DIR/BOOT/

	# Done
	if [ $? -ne 0 ]
	then
		echo Failed.
		echo
		exit 1
	fi

	touch $REPOSITORY_DIR/.boot_files_packaged
	rm -f $REPOSITORY_DIR/.image_created

	echo Finished packaging boot files
	echo
}

# Create image
create_image() 
{
	echo "Create image is not implemented :-("
	echo
}

##########################################################
# Main

# Parse arguments
PACKAGE_ALL="false"
PACKAGE_BOOT="false"
CREATE_IMAGE="false"
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
    	-I|--image)
			CREATE_IMAGE="true"
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

if [ $PACKAGE_BOOT = "false" ] && [ $CREATE_IMAGE = "false" ] || [ $BUILD_ALL = "true" ]
then
	PACKAGE_BOOT="true"
fi

# Run functionality
if [ $PACKAGE_BOOT = "true" ]
then
	package_boot
fi

if [ $CREATE_IMAGE = "true" ]
then
	create_image
fi

echo Finished packaging
