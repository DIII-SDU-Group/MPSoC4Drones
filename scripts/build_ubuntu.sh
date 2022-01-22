#!/bin/bash
#
# This script build the Ubuntu 20.04 rootfs

#set -x

[[ $0 != $BASH_SOURCE ]] && SCRIPTS_DIR=$(realpath $PWD/$BASH_SOURCE | xargs dirname) || SCRIPTS_DIR=$(realpath $0 | xargs dirname)
source $SCRIPTS_DIR/settings.sh >> /dev/null

##########################################################
# Ctrl+c trap:
trap unmount_qemu INT

function unmount_qemu() {
	sudo umount -fl $UBUNTU_ROOTFS_DIR/dev 2> /dev/null
	sudo umount -fl $UBUNTU_ROOTFS_DIR/proc 2> /dev/null
	sudo umount -fl $UBUNTU_ROOTFS_DIR/sys 2> /dev/null
	sudo umount -fl ${UBUNTU_ROOTFS_DIR}$XILINX_TOOLS_DIR 2> /dev/null
}

function mount_qemu() {
	sudo cp -av /usr/bin/qemu-aarch64-static $UBUNTU_ROOTFS_DIR/usr/bin/
	sudo cp -av /run/systemd/resolve/stub-resolv.conf $UBUNTU_ROOTFS_DIR/etc/resolv.conf

	sudo mount --bind /dev/ $UBUNTU_ROOTFS_DIR/dev
	sudo mount --bind /proc/ $UBUNTU_ROOTFS_DIR/proc
	sudo mount --bind /sys/ $UBUNTU_ROOTFS_DIR/sys
}

##########################################################
# Main:

# If only updating kernel:
UPDATE_KERNEL=false

if [ $1 = "--update-kernel" ]; then
	UPDATE_KERNEL=true
fi

# Main
if [ $UPDATE_KERNEL = "false" ]; then
	echo Building Ubuntu rootfs, will take a while...
	echo 

	cd $UBUNTU_ROOTFS_DIR

	# Get base rootfs
	echo Fetching Ubuntu 20.04 base rootfs...
	echo

	wget $UBUNTU_20_4_BASE_ROOTFS_URL -O - | tar xpz -C $UBUNTU_ROOTFS_DIR

	# Prepare qemu session
	echo Preparing Qemu session for filesystem setup...
	echo

	# Import settings to rootfs
	echo Moving settings to rootfs...
	echo

	if [ -d $UBUNTU_ROOTFS_DIR/mp4d_settings ]; then
		sudo rm -r $UBUNTU_ROOTFS_DIR/mp4d_settings
	fi

	mkdir $UBUNTU_ROOTFS_DIR/mp4d_settings

	echo $UBUNTU_HOST_NAME > $UBUNTU_ROOTFS_DIR/mp4d_settings/ubuntu_host_name
	echo $UBUNTU_USER > $UBUNTU_ROOTFS_DIR/mp4d_settings/ubuntu_user
	echo $UBUNTU_PASSWORD > $UBUNTU_ROOTFS_DIR/mp4d_settings/ubuntu_password
	echo $ROS_DISTRO_KEY_URL > $UBUNTU_ROOTFS_DIR/mp4d_settings/ros_distro_key_url
	echo $ROS2_PACKAGE_URL > $UBUNTU_ROOTFS_DIR/mp4d_settings/ros2_package_url

	cp $SCRIPTS_DIR/ubuntu/$UBUNTU_STAGE_1_PACKAGES_FILE $UBUNTU_ROOTFS_DIR/mp4d_settings/
	cp $SCRIPTS_DIR/ubuntu/$QEMU_STAGE_1_SCRIPT $UBUNTU_ROOTFS_DIR/mp4d_settings/
	cp $SCRIPTS_DIR/ubuntu/$UBUNTU_STAGE_2_PACKAGES_FILE $UBUNTU_ROOTFS_DIR/mp4d_settings/
	cp $SCRIPTS_DIR/ubuntu/$QEMU_STAGE_2_SCRIPT $UBUNTU_ROOTFS_DIR/mp4d_settings/
	cp $SCRIPTS_DIR/ubuntu/$UBUNTU_STAGE_3_PACKAGES_FILE $UBUNTU_ROOTFS_DIR/mp4d_settings/
	cp $SCRIPTS_DIR/ubuntu/$QEMU_STAGE_3_SCRIPT $UBUNTU_ROOTFS_DIR/mp4d_settings/
	cp $SCRIPTS_DIR/ubuntu/$QEMU_STAGE_4_SCRIPT $UBUNTU_ROOTFS_DIR/mp4d_settings/

	# Stage 1 setup
	echo Running stage 1 setup...
	echo

	mount_qemu
	sudo chroot $UBUNTU_ROOTFS_DIR/ /mp4d_settings/$QEMU_STAGE_1_SCRIPT
	unmount_qemu

	# Stage 2 setup
	echo Running stage 2 setup...
	echo

	mkdir -p $PYNQ_DIR/sdbuild/ccache

	# Install first packages
	packages="cmake ssl"
	CCACHEDIR=$PYNQ_DIR/sdbuild/ccache PACKAGE_PATH=$PYNQ_DIR/sdbuild/packages PETALINUX_PROJECT_DIR=$PETALINUX_PROJECT_DIR $PYNQ_DIR/sdbuild/scripts/install_packages.sh $UBUNTU_ROOTFS_DIR $packages

	# Workaround for installing XRT dependencies
	mount_qemu
	sudo chroot $UBUNTU_ROOTFS_DIR/ /mp4d_settings/$QEMU_STAGE_2_SCRIPT
	unmount_qemu

	# Install remaining packages
	packages="libsds xrfclk xrt xsdfec"
	CCACHEDIR=$PYNQ_DIR/sdbuild/ccache PACKAGE_PATH=$PYNQ_DIR/sdbuild/packages PETALINUX_PROJECT_DIR=$PETALINUX_PROJECT_DIR XILINX_TOOLS_DIR=$XILINX_TOOLS_DIR XILINX_TOOLS_VERSION=${TOOLS_VERSION}.${TOOLS_SUB_VERSION} $PYNQ_DIR/sdbuild/scripts/install_packages.sh $TARGET_DIR/rootfs $packages
else
	sudo rm -rf $UBUNTU_ROOTFS_DIR/lib/modules/*
	sudo rm -rf $UBUNTU_ROOTFS_DIR/usr/include/zocl
	sudo rm -rf $UBUNTU_ROOTFS_DIR/usr/src/kernel
	sudo rm -rf $UBUNTU_ROOTFS_DIR/usr/src/linux-headers-*
	cd $UBUNTU_ROOTFS_DIR/lib/firmware
	sudo rm -rf $( ls $TARGET_DIR/firmware/ )
	cd $UBUNTU_ROOTFS_DIR
	sudo rm -f $UBUNTU_ROOTFS_DIR/lib
	
	sudo mkdir -p $UBUNTU_ROOTFS_DIR/usr/lib/modules

	sudo cp -rf $PETALINUX_PROJECT_DIR/build/tmp/sysroots-components/$BOARD/zocl/usr/include/zocl $UBUNTU_ROOTFS_DIR/usr/include/
	sudo cp -rf $PETALINUX_PROJECT_DIR/build/tmp/sysroots-components/$BOARD/zocl/lib/modules/* $UBUNTU_ROOTFS_DIR/usr/lib/modules/

	sudo mkdir -p $UBUNTU_ROOTFS_DIR/lib/modules

	sudo rm -f $UBUNTU_ROOTFS_DIR/lib/ld-linux-aarch64.so.1

	sudo ln -s /usr/lib/ld-linux-aarch64.so.1 $UBUNTU_ROOTFS_DIR/lib/ld-linux-aarch64.so.1
fi

# Import modules
rm -rf $MODULES_DIR/tmp
mkdir $MODULES_DIR/tmp
tar -xf $MODULES_DIR/modules--*.tgz -C $MODULES_DIR/tmp
sudo mkdir -p $UBUNTU_ROOTFS_DIR/lib/modules/$LINUX_VERSION/
sudo cp -r --no-preserve=ownership $MODULES_DIR/tmp/lib/modules/$LINUX_VERSION/* $UBUNTU_ROOTFS_DIR/lib/modules/$LINUX_VERSION/
sudo cp -f $PETALINUX_PROJECT_DIR/build/tmp/sysroots-components/$BOARD/wilc/lib/modules/$LINUX_VERSION/extra/* $UBUNTU_ROOTFS_DIR/usr/lib/modules/$LINUX_VERSION/extra/

# Extract kernel headers and run depmod
mount_qemu
rpm2cpio $KERNEL_DEVSRC_DIR/*.rpm | sudo chroot $TARGET_DIR/rootfs cpio -id
sudo cp -r $UBUNTU_ROOTFS_DIR/lib/modules/$LINUX_VERSION/* \
	$UBUNTU_ROOTFS_DIR/usr/lib/modules/$LINUX_VERSION/ 
sudo rm -rf $UBUNTU_ROOTFS_DIR/lib
sudo ln -s usr/lib $UBUNTU_ROOTFS_DIR/lib
sudo chroot $UBUNTU_ROOTFS_DIR depmod -a $LINUX_VERSION
unmount_qemu

# Import firmware
sudo mkdir -p $UBUNTU_ROOTFS_DIR/lib/firmware
sudo cp -r $TARGET_DIR/firmware/* $UBUNTU_ROOTFS_DIR/lib/firmware

if [ $UPDATE_KERNEL = "false" ]; then
	# Stage 3
	echo Running stage 3 setup...
	echo
	mount_qemu
	sudo chroot $UBUNTU_ROOTFS_DIR/ ./mp4d_settings/$QEMU_STAGE_3_SCRIPT
	unmount_qemu

	# Stage 4
	# Install Gradle 6.3 to rootfs before chroot setup
	echo Running stage 4 setup...
	echo
	sudo wget "https://services.gradle.org/distributions/gradle-6.3-bin.zip" -O gradle-6.3-bin.zip
	sudo mkdir $UBUNTU_ROOTFS_DIR/opt/gradle
	sudo unzip -d $UBUNTU_ROOTFS_DIR/opt/gradle gradle-6.3-bin.zip
	sudo rm gradle-6.3-bin.zip

	mount_qemu
	sudo chroot $UBUNTU_ROOTFS_DIR/ ./mp4d_settings/$QEMU_STAGE_4_SCRIPT
	unmount_qemu
	unmount_qemu

	sudo rm -rf $UBUNTU_ROOTFS_DIR/mp4d_settings
	cd $TARGET_DIR
	
	# Workaround for sudo
    	sudo chown root:root $UBUNTU_ROOTFS_DIR/usr/bin/sudo && chmod 4755 $UBUNTU_ROOTFS_DIR/usr/bin/sudo

	# Finished

	echo Finished building Ubuntu
	echo
else
	echo Finished updating kernel
	echo
fi

