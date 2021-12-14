#!/bin/bash
#
# This script build the Ubuntu 20.04 rootfs to the directory 
# specified in the first argument and install packages specified
# in file supplied by second argument.

[[ $0 != $BASH_SOURCE ]] && SCRIPTS_DIR=$(realpath $PWD/$BASH_SOURCE | xargs dirname) || SCRIPTS_DIR=$(realpath $0 | xargs dirname)
source $SCRIPTS_DIR/settings.sh >> /dev/null

##########################################################
# Ctrl+c trap:
trap unmount_qemu INT

function unmount_qemu() {
	sudo umount $UBUNTU_ROOTFS_DIR/dev >> /dev/null
	sudo umount $UBUNTU_ROOTFS_DIR/proc >> /dev/null
	sudo umount $UBUNTU_ROOTFS_DIR/sys >> /dev/null

	exit
}

##########################################################
# Main:

cd $UBUNTU_ROOTFS_DIR

# Get base rootfs
echo Fetching Ubuntu 20.04 base rootfs...
echo

wget $UBUNTU_20_4_BASE_ROOTFS_URL -O - | tar xpz -C $UBUNTU_ROOTFS_DIR

# Prepare qemu session
echo Preparing Qemu session for filesystem setup...
echo

sudo cp -av /usr/bin/qemu-aarch64-static $UBUNTU_ROOTFS_DIR/usr/bin/
sudo cp -av /run/systemd/resolve/stub-resolv.conf $UBUNTU_ROOTFS_DIR/etc/resolv.conf

sudo mount --bind /dev/ $UBUNTU_ROOTFS_DIR/dev
sudo mount --bind /proc/ $UBUNTU_ROOTFS_DIR/proc
sudo mount --bind /sys/ $UBUNTU_ROOTFS_DIR/sys

echo

# Import settings to rootfs
echo Moving settings to rootfs...
echo

mkdir $UBUNTU_ROOTFS_DIR/mp4d_settings

echo $UBUNTU_USER > $UBUNTU_ROOTFS_DIR/mp4d_settings/ubuntu_user
echo $UBUNTU_PASSWORD > $UBUNTU_ROOTFS_DIR/mp4d_settings/ubuntu_password
echo $ROS_DISTRO_KEY_URL > $UBUNTU_ROOTFS_DIR/mp4d_settings/ros_distro_key_url
echo $ROS2_PACKAGE_URL > $UBUNTU_ROOTFS_DIR/mp4d_settings/ros2_package_url

cp $SCRIPTS_DIR/$UBUNTU_USER_PACKAGES_FILE $UBUNTU_ROOTFS_DIR/mp4d_settings/
cp $SCRIPTS_DIR/$QEMU_UBUNTU_SETUP_SCRIPT $UBUNTU_ROOTFS_DIR/mp4d_settings/

# Run setup script with qemu
echo Running setup scripts inside a Qemu session to set up Ubuntu...
echo

sudo chroot $UBUNTU_ROOTFS_DIR/ ./mp4d_settings/qemu_ubuntu_setup.sh

echo Unmounting after Qemu session...
echo

unmount_qemu

sudo rm -rf $UBUNTU_ROOTFS_DIR/mp4d_settings

# Workaround
chmod 4755 $UBUNTU_ROOTFS_DIR/usr/bin/sudo 

echo Finished building Ubuntu
echo

