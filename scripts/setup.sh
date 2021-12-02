#!/bin/bash
# 
# This scripts sets up the project structure. 
# Options can be specified to 
#	1) 	setup or re-setup the Avnet git repos and patch the build scripts;
#	2)	setup or re-setup the Vivado project, deleting the existing project. 
#		Remember to save your work;
#	3)	setup or re-setup the PetaLinux project;
#	4) 	or all of the above.

set -e

[[ $0 != $BASH_SOURCE ]] && SCRIPTS_DIR=$(realpath $PWD/$BASH_SOURCE | xargs dirname) || SCRIPTS_DIR=$(realpath $0 | xargs dirname)
source $SCRIPTS_DIR/settings.sh

##########################################################
# Functions

# Help
Help()
{
	echo "Setup the MPSoC4Drones project structure."
	echo 
	echo "Syntax: m4d-setup [-A|G|V|P|f|h]"
	echo "options:"
	echo "-A, --all		setup or re-setup all sub-projects (default)"
	echo "-G, --git		setup or re-setup Avnet git repositories and build scripts"
	echo "-V, --vivado		setup or re-setup Vivado project base"
	echo "-P, --petalinux		setup or re-setup PetaLinux project"
	echo "-f, --force		overwrite existing work without prompting"
	echo
	echo "-h, --help		show this message"
	echo
}

# Setup Avnet git repositories and build scripts
setup_git()
{
	cd $REPOSITORY_DIR

	echo "Setting up Avnet git and build scripts..."
	echo

	if [ -a $REPOSITORY_DIR/bdf ] || [ -a $REPOSITORY_DIR/hdl ] || [ -a $REPOSITORY_DIR/petalinux ] || [ -a $REPOSITORY_DIR/meta-avnet ]
	then
		if [ $FORCE = "false" ]
		then
			echo Avnet repository directories are non-empty. Contents will be overwritten. 
			echo This will overwrite changes you have made to the PetaLinux project and the Vivado project.
			while true; do
				read -p "Are you sure you want to continue (Y/n)? " yn
				case $yn in
					[Yy]* ) echo ; break;;
					[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
					* ) echo "Please answer (Y/n)" ;;
				esac
			done
		fi

		echo Removing existing Avnet repositories
		echo

		rm -rf $REPOSITORY_DIR/bdf
		rm -rf $REPOSITORY_DIR/hdl
		rm -rf $REPOSITORY_DIR/petalinux
		rm -rf $REPOSITORY_DIR/meta-avnet
	fi

	echo "Cloning Avnet repositories..."
	echo
	
	git clone $AVNET_BDF_REPO
	git clone -b $AVNET_REPO_TAG $AVNET_HDL_REPO
	git clone -b $AVNET_REPO_TAG $AVNET_PETALINUX_REPO
	git clone -b $AVNET_REPO_TAG $AVNET_META_AVNET_REPO

	echo "Patching Avnet repositories for MPSoC4Drones..."
	echo
	
	cd $REPOSITORY_DIR/hdl
	git apply $PATCHES_DIR/hdl_repo.patch
	git add -A && git commit -m "MPSoC4Drones"
	git tag -f $DIII_REPO_TAG HEAD
	git checkout $AVNET_REPO_TAG && git checkout $DIII_REPO_TAG

	cd $REPOSITORY_DIR/petalinux
	#git apply $PATCHES_DIR/petalinux_repo.patch
	git add -A && git commit -m "MPSoC4Drones"
	git tag -f $DIII_REPO_TAG HEAD
	git checkout $AVNET_REPO_TAG && git checkout $DIII_REPO_TAG

	cd $REPOSITORY_DIR/meta-avnet
	git apply $PATCHES_DIR/meta_avnet_repo.patch
	git add -A && git commit -m "MPSoC4Drones"
	git tag -f $DIII_REPO_TAG HEAD
	git checkout $AVNET_REPO_TAG && git checkout $DIII_REPO_TAG

	cd $REPOSITORY_DIR
	touch .git_setup

	rm -f .vivado_setup .petalinux_setup
}

setup_vivado()
{
	if [ ! -a $REPOSITORY_DIR/.git_setup ]
	then
		echo Can not setup Vivado project before setting up the Git project structure.
		echo Run mp4d-setup -G to setup Git project structure.
		exit 1
	fi

	echo Setting up Vivado project in $REPOSITORY_DIR/hdl/projects/u96v2_sbc_mp4d_2020_2/ ...
	echo

	if [ -a $REPOSITORY_DIR/hdl/projects/u96v2_sbc_mp4d_2020_2 ] 
	then
		if [ $FORCE = "false" ]
		then
			echo Vivado project directory is non-empty. Contents will be overwritten.
			while true; do
				read -p "Continue (Y/n)? " yn
				case $yn in
					[Yy]* ) echo ; break;;
					[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
					* ) echo "Please answer (Y/n)" ;;
				esac
			done
		fi

		echo Removing existing Vivado project
		echo

		rm -rf $REPOSITORY_DIR/hdl/projects/u96v2_sbc_mp4d_2020_2
	fi

	cd $REPOSITORY_DIR

	echo Running Vivado project creation scripts...
	echo

	./petalinux/scripts/make_u96v2_sbc_mp4d.sh --vivado-create

	touch .vivado_setup
}

setup_petalinux ()
{
	if [ ! -a $REPOSITORY_DIR/.git_setup ]
	then
		echo Can not setup PetaLinux project before setting up the Git project structure.
		echo Run mp4d-setup -G to setup Git project structure.
		exit 1
	fi

	echo Setting up PetaLinux project in $REPOSITORY_DIR/petalinux/projects/u96v2_sbc_mp4d_2020_2/ ...
	echo

	if [ -a $REPOSITORY_DIR/petalinux/projects/u96v2_sbc_mp4d_2020_2 ] 
	then
		if [ $FORCE = "false" ]
		then
			echo PetaLinux project directory is non-empty. Contents will be overwritten.
			while true; do
				read -p "Continue (Y/n)? " yn
				case $yn in
					[Yy]* ) echo ; break;;
					[Nn]* ) echo ; echo "Exiting..." ; echo ; exit;;
					* ) echo "Please answer (Y/n)" ;;
				esac
			done
		fi

		echo Removing existing PetaLinux project
		echo

		rm -rf $REPOSITORY_DIR/petalinux/projects/u96v2_sbc_mp4d_2020_2
	fi

	cd $REPOSITORY_DIR

	echo Running PetaLinux project creation scripts...
	echo

	./petalinux/scripts/make_u96v2_sbc_mp4d.sh --petalinux-create

	touch .petalinux_setup
}

##########################################################
# Main

# Parse arguments
ALL="false"
GIT="false"
VIVADO="false"
PETALINUX="false"
FORCE="false"

while [[ $# -gt 0 ]]; do
  key="$1"

	case $key in
    	-A|--all)
			ALL="true"
      		shift # past value
      		;;
    	-G|--git)
			GIT="true"
      		shift # past value
      		;;
    	-V|--vivado)
			VIVADO="true"
      		shift # past value
      		;;
    	-P|--petalinux)
			PETALINUX="true"
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


if [ $GIT = "false" ] && [ $VIVADO = "false" ] && [ $PETALINUX = "false" ] || [ $ALL = "true" ]
then
	GIT="true"
	VIVADO="true"
	PETALINUX="true"
fi

# Run functionality
if [ $GIT = "true" ]
then
	setup_git
fi

if [ $VIVADO = "true" ]
then
	setup_vivado
fi

if [ $PETALINUX = "true" ]
then
	setup_petalinux
fi

echo Finished setting up. Exiting...
echo
