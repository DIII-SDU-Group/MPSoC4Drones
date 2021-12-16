##########################################################

echo
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
echo

##########################################################
# Definitions:

if [ $0 == $BASH_SOURCE ] || [ ${BASH_SOURCE:0:1} = "/" ]
then
	SCRIPTS_DIR=$(realpath $0 | xargs dirname)
else
	SCRIPTS_DIR=$(realpath $PWD/$BASH_SOURCE | xargs dirname) || SCRIPTS_DIR=$(realpath $0 | xargs dirname)
fi

REPOSITORY_DIR=$SCRIPTS_DIR/..
PATCHES_DIR=$REPOSITORY_DIR/patches
VIVADO_DIR=$REPOSITORY_DIR/vivado
PETALINUX_DIR=$REPOSITORY_DIR/petalinux
TARGET_DIR=$REPOSITORY_DIR/target
UBUNTU_ROOTFS_DIR=$TARGET_DIR/rootfs

AVNET_BDF_REPO=https://github.com/Avnet/bdf.git
AVNET_HDL_REPO=https://github.com/Avnet/hdl.git
AVNET_PETALINUX_REPO=https://github.com/Avnet/petalinux.git
AVNET_META_AVNET_REPO=https://github.com/Avnet/meta-avnet.git

AVNET_REPO_TAG=2020p2_u96v2_sbc_base_20210426_105325 
DIII_REPO_TAG=2020p2_u96v2_sbc_mp4d_20211202_104300

UBUNTU_20_4_BASE_ROOTFS_URL=http://cdimage.ubuntu.com/ubuntu-base/releases/20.04/release/ubuntu-base-20.04.1-base-arm64.tar.gz
UBUNTU_USER_PACKAGES_FILE=ubuntu_packages.txt
QEMU_UBUNTU_SETUP_SCRIPT=qemu_ubuntu_setup.sh
ROS_DISTRO_KEY_URL=https://raw.githubusercontent.com/ros/rosdistro/master/ros.key
ROS2_PACKAGE_URL=http://packages.ros.org/ros2/ubuntu

UBUNTU_HOST_NAME=MPSoC4Drones
UBUNTU_USER=u96
UBUNTU_PASSWORD=u96

##########################################################
# Script aliases

alias mp4d-setup=$SCRIPTS_DIR/setup.sh
alias mp4d-build=$SCRIPTS_DIR/build.sh
alias mp4d-package=$SCRIPTS_DIR/package.sh

##########################################################
echo "Tools sourced."
echo
echo "Available commands:"
echo "	mp4d-setup  [-A|G|V|P|f|h]"
echo "	mp4d-build  [-A|V|P|U|f|h]"
echo "	m4d-package [-A|B|I|f|h]"
echo
