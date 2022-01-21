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
source $SCRIPTS_DIR/settings.sh >> /dev/null

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

	if [ -a $REPOSITORY_DIR/bdf ] || [ -a $REPOSITORY_DIR/hdl ] || [ -a $REPOSITORY_DIR/petalinux ] || [ -a $REPOSITORY_DIR/meta-avnet ] || [ -a $REPOSITORY_DIR/PYNQ ]
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

		echo Removing existing repositories
		echo

		rm -rf $REPOSITORY_DIR/bdf
		rm -rf $REPOSITORY_DIR/hdl
		rm -rf $REPOSITORY_DIR/petalinux
		rm -rf $REPOSITORY_DIR/meta-avnet
		rm -rf $REPOSITORY_DIR/PYNQ
		rm -rf $REPOSITORY_DIR/.git_setup
	fi

	echo "Cloning repositories..."
	echo
	
	git clone $AVNET_BDF_REPO
	git clone $AVNET_HDL_REPO
	git clone $AVNET_PETALINUX_REPO
	git clone $AVNET_META_AVNET_REPO
	git clone $PYNQ_REPO

	echo "Patching repositories for MPSoC4Drones..."
	echo
	
	cd $REPOSITORY_DIR/hdl
	git checkout $AVNET_REPO_TAG
	git apply $PATCHES_DIR/hdl_repo.patch
	git add -A && git commit -m "MPSoC4Drones"
	git tag -f $DIII_REPO_TAG HEAD
	git checkout $AVNET_REPO_TAG && git checkout $DIII_REPO_TAG

	cd $REPOSITORY_DIR/petalinux
	git checkout $AVNET_REPO_TAG
	git apply $PATCHES_DIR/petalinux_repo.patch
	git add -A && git commit -m "MPSoC4Drones"
	git tag -f $DIII_REPO_TAG HEAD
	git checkout $AVNET_REPO_TAG && git checkout $DIII_REPO_TAG

	cd $REPOSITORY_DIR/meta-avnet
	git checkout $AVNET_REPO_TAG
	git apply --reject $PATCHES_DIR/meta_avnet_repo.patch 
	git add -A && git commit -m "MPSoC4Drones"
	git tag -f $DIII_REPO_TAG HEAD
	git checkout $AVNET_REPO_TAG && git checkout $DIII_REPO_TAG

	cd $REPOSITORY_DIR/PYNQ
	git checkout $PYNQ_TAG
	git apply --reject $PATCHES_DIR/PYNQ_repo.patch 
	git add -A && git commit -m "MPSoC4Drones"
	git tag -f $DIII_REPO_TAG HEAD
	git checkout $PYNQ_TAG && git checkout $DIII_REPO_TAG

	cd $REPOSITORY_DIR
	touch .git_setup

	rm -f .vivado_setup .petalinux_setup .vivado_built .petalinux_configured .petalinux_built
}

setup_vivado()
{
	if [ ! -e $REPOSITORY_DIR/.git_setup ]
	then
		echo Can not setup Vivado project before setting up the Git project structure.
		echo Run mp4d-setup -G to setup Git project structure.
		exit 1
	fi

	echo Setting up Vivado project in $VIVADO_PROJECT_DIR/ ...
	echo

	if [ -a $VIVADO_PROJECT_DIR ] 
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

		rm -rf $VIVADO_PROJECT_DIR
		rm -f $REPOSITORY_DIR/.vivado_setup
	fi

	cd $REPOSITORY_DIR

	echo Running Vivado project creation scripts...
	echo

	./petalinux/scripts/make_${BOARD}_${PROJECT}.sh --vivado-create

	touch .vivado_setup

	rm -f .vivado_built .petalinux_configured

	echo Vivado project created at $REPOSITORY_DIR/hdl/projects/u962v2_sbc_mp4d_2020_2/
	echo
}

setup_petalinux ()
{
	if [ ! -e $REPOSITORY_DIR/.git_setup ]
	then
		echo Can not setup PetaLinux project before setting up the Git project structure.
		echo Run mp4d-setup -G to setup Git project structure.
		exit 1
	fi

	echo Setting up PetaLinux project in $REPOSITORY_DIR/petalinux/projects/u96v2_sbc_mp4d_2020_2/ ...
	echo

	if [ ! -z $(ls $PETALINUX_DIR/projects/) ] 
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

		rm -rf $PETALINUX_PROJECT_DIR
		rm -rf $REPOSITORY_DIR/petalinux/projects/cache
		rm -f $REPOSITORY_DIR/.petalinux_setup
	fi

	cd $REPOSITORY_DIR

	echo Running PetaLinux project creation scripts...
	echo

	./petalinux/scripts/make_${BOARD}_${PROJECT}.sh --petalinux-create

	touch .petalinux_setup

	rm -f .petalinux_configured .petalinux_built
}

##########################################################
# Main

# Parse arguments
SETUP_ALL="false"
SETUP_GIT="false"
SETUP_VIVADO="false"
SETUP_PETALINUX="false"
FORCE="false"

while [[ $# -gt 0 ]]; do
  key="$1"

	case $key in
    	-A|--all)
			SETUP_ALL="true"
      		shift # past value
      		;;
    	-G|--git)
			SETUP_GIT="true"
      		shift # past value
      		;;
    	-V|--vivado)
			SETUP_VIVADO="true"
      		shift # past value
      		;;
    	-P|--petalinux)
			SETUP_PETALINUX="true"
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


if [ $SETUP_GIT = "false" ] && [ $SETUP_VIVADO = "false" ] && [ $SETUP_PETALINUX = "false" ] || [ $SETUP_ALL = "true" ]
then
	SETUP_GIT="true"
	SETUP_VIVADO="true"
	SETUP_PETALINUX="true"
fi

# Run functionality
if [ $SETUP_GIT = "true" ]
then
	setup_git
fi

if [ $SETUP_VIVADO = "true" ]
then
	setup_vivado
fi

if [ $SETUP_PETALINUX = "true" ]
then
	setup_petalinux
fi

echo Finished setting up. Exiting...
echo
