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
HDL_DIR=$REPOSITORY_DIR/hdl
PETALINUX_DIR=$REPOSITORY_DIR/petalinux
PYNQ_DIR=$REPOSITORY_DIR/PYNQ
TARGET_DIR=$REPOSITORY_DIR/target
UBUNTU_ROOTFS_DIR=$TARGET_DIR/rootfs
UBUNTU_BOOT_DIR=$TARGET_DIR/BOOT
MODULES_DIR=$TARGET_DIR/modules
KERNEL_DEVSRC_DIR=$TARGET_DIR/kernel_devsrc

BOARD=u96v2_sbc
PROJECT=mp4d
TOOLS_VERSION=2020
TOOLS_SUB_VERSION=2

AVNET_PROJECT_NAME=${BOARD}_${PROJECT}_${TOOLS_VERSION}_${TOOLS_SUB_VERSION}

PETALINUX_PROJECT_DIR=$PETALINUX_DIR/projects/$AVNET_PROJECT_NAME
VIVADO_PROJECT_DIR=$HDL_DIR/projects/$AVNET_PROJECT_NAME

AVNET_BDF_REPO=https://github.com/Avnet/bdf.git
AVNET_HDL_REPO=https://github.com/Avnet/hdl.git
AVNET_PETALINUX_REPO=https://github.com/Avnet/petalinux.git
AVNET_META_AVNET_REPO=https://github.com/Avnet/meta-avnet.git
PYNQ_REPO=https://github.com/Xilinx/PYNQ.git

AVNET_REPO_TAG=2020p2_u96v2_sbc_base_20210426_105325 
DIII_REPO_TAG=2020p2_u96v2_sbc_mp4d_20211202_104300
PYNQ_TAG=image_v2.7

LINUX_VERSION=5.4.0-xilinx-v2020.2

UBUNTU_20_4_BASE_ROOTFS_URL=http://cdimage.ubuntu.com/ubuntu-base/releases/20.04/release/ubuntu-base-20.04.1-base-arm64.tar.gz
QEMU_STAGE_1_SCRIPT=qemu_stage_1.sh
UBUNTU_STAGE_1_PACKAGES_FILE=stage_1_packages.txt
QEMU_STAGE_2_SCRIPT=qemu_stage_2.sh
UBUNTU_STAGE_2_PACKAGES_FILE=stage_2_packages.txt
QEMU_STAGE_3_SCRIPT=qemu_stage_3.sh
UBUNTU_STAGE_3_PACKAGES_FILE=stage_3_packages.txt
QEMU_STAGE_4_SCRIPT=qemu_stage_4.sh
ROS_DISTRO_KEY_URL=https://raw.githubusercontent.com/ros/rosdistro/master/ros.key
ROS2_PACKAGE_URL=http://packages.ros.org/ros2/ubuntu

UBUNTU_HOST_NAME=u96v2
UBUNTU_USER=mp4d
UBUNTU_PASSWORD=mp4d

##########################################################
# Script aliases

alias mp4d-setup=$SCRIPTS_DIR/setup.sh
alias mp4d-build=$SCRIPTS_DIR/build.sh
alias mp4d-package=$SCRIPTS_DIR/package.sh
alias mp4d-commit=$SCRIPTS_DIR/commit.sh

##########################################################
echo "Tools sourced."
echo
echo "Available commands:"
echo "	mp4d-setup   [-A|G|V|P|f|h]"
echo "	mp4d-build   [-A|V|P|U|f|h]"
echo "	m4pd-package [-A|B|f|h]"
echo "	mp4d-commit  [-A|V|M|U|f|h]"
echo
