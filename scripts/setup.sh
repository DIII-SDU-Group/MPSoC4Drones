#!/bin/bash

set -e

##########################################################

echo "██████╗░██╗██╗██╗"
echo "██╔══██╗██║██║██║"
echo "██║░░██║██║██║██║"
echo "██║░░██║██║██║██║"
echo "██████╔╝██║██║██║"
echo "╚═════╝░╚═╝╚═╝╚═╝"
echo
echo "🄳🅁🄾🄽🄴 🄸🄽🄵🅁🄰🅂🅃🅁🅄🄲🅃🅄🅁🄴 🄸🄽🅂🄿🄴🄲🅃🄸🄾🄽 🄰🄽🄳 🄸🄽🅃🄴🅁🄰🄲🅃🄸🄾🄽"
echo
echo "🅂🄳🅄.🄳🄺/🄳🄸🄸🄸"
echo
echo "🄶🄸🅃🄷🅄🄱.🄲🄾🄼/🄳🄸🄸🄸-🅂🄳🅄-🄶🅁🄾🅄🄿"
echo

##########################################################
# 

##########################################################
# Definitions:

SCRIPTS_DIR=$(realpath $0 | xargs dirname)
REPOSITORY_DIR=$SCRIPTS_DIR/../
AVNET_DIR=$REPOSITORY_DIR/avnet/
VIVADO_DIR=$REPOSITORY_DIR/vivado/
PETALINUX_DIR=$REPOSITORY_DIR/petalinux/

AVNET_BDF_REPO=https://github.com/Avnet/bdf.git
AVNET_HDL_REPO=https://github.com/Avnet/hdl.git
AVNET_PETALINUX_REPO=https://github.com/Avnet/petalinux.git
AVNET_ULTRA96v2_TAG=2020p2_u96v2_sbc_base_20210426_105325 

##########################################################
# Check

if [ ! -z "$(ls -A $AVNET_DIR)" ] || [ ! -z "$(ls -A $VIVADO_DIR)" ] || [ ! -z "$(ls -A $PETALINUX_DIR)"]; then
	echo Work has already been done in this project. 
	while true; do
		read -p "Contents will be overwritten. - continue (Y/n)? " yn
		case $yn in
			[Yy]* ) sudo rm -rf $AVNET_DIR/* $VIVADO_DIR/* $PETALINUX_DIR/*; break;;
			[Nn]* ) echo Exiting... ; echo ; exit 0;;
			* ) echo "Please answer yes or no.";;
		esac
	done
fi

echo

##########################################################
# Fetch Avnet repositories for building Ultra96-v2 image

echo "Fetching Avnet repositories..."
echo

if [ -d $AVNET_DIR/bdf ] 
then
	rm -r $AVNET_DIR/bdf
fi

if [ -d $AVNET_DIR/hdl ] 
then
	rm -r $AVNET_DIR/hdl
fi

if [ -d $AVNET_DIR/petalinux ] 
then
	rm -r $AVNET_DIR/petalinux
fi

cd $AVNET_DIR

git clone $AVNET_BDF_REPO
git clone -b $AVNET_ULTRA96v2_TAG $AVNET_HDL_REPO
git clone -b $AVNET_ULTRA96v2_TAG $AVNET_PETALINUX_REPO

cd $REPOSITORY_DIR

##########################################################
# Patch Avnet build scripts

echo "Patching Avnet build scripts..."
echo 


