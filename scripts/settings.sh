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
echo "Sourcing MPSoC4Drones tools..."

##########################################################
# Definitions:

[[ $0 != $BASH_SOURCE ]] && SCRIPTS_DIR=$(realpath $PWD/$BASH_SOURCE | xargs dirname) || SCRIPTS_DIR=$(realpath $0 | xargs dirname)
REPOSITORY_DIR=$SCRIPTS_DIR/..
PATCHES_DIR=$REPOSITORY_DIR/patches
VIVADO_DIR=$REPOSITORY_DIR/vivado
PETALINUX_DIR=$REPOSITORY_DIR/petalinux

AVNET_BDF_REPO=https://github.com/Avnet/bdf.git
AVNET_HDL_REPO=https://github.com/Avnet/hdl.git
AVNET_PETALINUX_REPO=https://github.com/Avnet/petalinux.git
AVNET_META_AVNET_REPO=https://github.com/Avnet/meta-avnet.git
AVNET_REPO_TAG=2020p2_u96v2_sbc_base_20210426_105325 
DIII_REPO_TAG=2020p2_u96v2_sbc_mp4d_20211202_104300

##########################################################
# Script aliases

alias mp4d-setup=$SCRIPTS_DIR/setup.sh

alias mp4d-build-hardware=$SCRIPTS_DIR/build_hardware.sh


##########################################################
echo "Tools sourced."
echo "Available commands:"
echo "	mp4d-setup [-A|G|V|P|f|h]"
echo "	mp4d-build-hardware"
echo
