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
	sudo umount -fl $UBUNTU_ROOTFS_DIR/dev >> /dev/null
	sudo umount -fl $UBUNTU_ROOTFS_DIR/proc >> /dev/null
	sudo umount -fl $UBUNTU_ROOTFS_DIR/sys >> /dev/null

	exit
}

##########################################################
# Main:

cd $UBUNTU_ROOTFS_DIR

# Check for ROS2 installation
if ros2 | grep -q "ros2 is an extensible command-line tool for ROS 2."; then
	echo ROS2 found.
	echo
else
	echo ROS2 is not installed or not sourced. Install ROS2 Foxy before you continue.
	echo "https://docs.ros.org/en/foxy/Installation/Ubuntu-Install-Debians.html"
	echo

	exit 1
fi

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

echo $UBUNTU_HOST_NAME > $UBUNTU_ROOTFS_DIR/mp4d_settings/ubuntu_host_name
echo $UBUNTU_USER > $UBUNTU_ROOTFS_DIR/mp4d_settings/ubuntu_user
echo $UBUNTU_PASSWORD > $UBUNTU_ROOTFS_DIR/mp4d_settings/ubuntu_password
echo $ROS_DISTRO_KEY_URL > $UBUNTU_ROOTFS_DIR/mp4d_settings/ros_distro_key_url
echo $ROS2_PACKAGE_URL > $UBUNTU_ROOTFS_DIR/mp4d_settings/ros2_package_url

cp $SCRIPTS_DIR/$UBUNTU_USER_PACKAGES_FILE $UBUNTU_ROOTFS_DIR/mp4d_settings/
cp $SCRIPTS_DIR/$QEMU_UBUNTU_SETUP_SCRIPT $UBUNTU_ROOTFS_DIR/mp4d_settings/

# Install Gradle 6.3 to rootfs before chroot setup
sudo wget "https://services.gradle.org/distributions/gradle-6.3-bin.zip" -O gradle-6.3-bin.zip
sudo mkdir $UBUNTU_ROOTFS_DIR/opt/gradle
sudo unzip -d $UBUNTU_ROOTFS_DIR/opt/gradle gradle-6.3-bin.zip
sudo rm gradle-6.3-bin.zip

# Run setup script with qemu
echo Running setup scripts inside a Qemu session to set up Ubuntu...
echo

sudo chroot $UBUNTU_ROOTFS_DIR/ ./mp4d_settings/qemu_ubuntu_setup.sh

echo Unmounting after Qemu session...
echo

sudo rm -rf $UBUNTU_ROOTFS_DIR/mp4d_settings

## Install Fast-RTPS-Gen to host system
#cd $TARGET_DIR/rootfs/home/$UBUNTU_USER/Fast-RTPS-Gen/
#sudo $TARGET_DIR/rootfs/opt/gradle/gradle-6.3/bin/gradle install
#cd $TARGET_DIR
#
## Cross-compile ROS2 workspace
#echo "The following packages will be installed to your host system if they are not already installed:"
#echo "	cmake"
#echo "	git"
#echo "	wget"
#echo "	python3-pip"
#echo "	qemu-user-static"
#echo "	g++-aarch64-linux-gnu"
#echo "	g++-arm-linux-gnueabihf"
#echo "	pkg-config-aarch64-linux-gnu"
#echo "	python3-vcstool"
#echo "	python3-colcon-common-extensions"
#echo 
#
#sudo apt update && sudo apt install -y \
#    cmake \
#    git \
#    wget \
#    python3-pip \
#    qemu-user-static \
#    g++-aarch64-linux-gnu \
#    g++-arm-linux-gnueabihf \
#    pkg-config-aarch64-linux-gnu
#
#python3 -m pip install -U \
#    vcstool \
#    colcon-common-extensions
#
#export TARGET_ARCH=aarch64
#export TARGET_TRIPLE=aarch64-linux-gnu
#export CC=/usr/bin/$TARGET_TRIPLE-gcc
#export CXX=/usr/bin/$TARGET_TRIPLE-g++
#export CROSS_COMPILE=/usr/bin/$TARGET_TRIPLE-
#export SYSROOT=$TARGET_DIR/rootfs/
#export ROS2_INSTALL_PATH=$TARGET_DIR/rootfs/opt/ros/foxy
#export PYTHON_SOABI=cpython-36m-$TARGET_TRIPLE
#
#source $TARGET_DIR/rootfs/opt/ros/foxy/setup.bash
#
#cd $TARGET_DIR/rootfs/home/$UBUNTU_USER/ros2_ws/
#
#sudo chown $USER:$USER $TARGET_DIR/rootfs/home/$UBUNTU_USER
#
#colcon build --merge-install \
#    --cmake-force-configure \
#	--symlink-install \
#	--package-up-to=px4_msgs \
#    --cmake-args \
#        -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
#        -DCMAKE_TOOLCHAIN_FILE="$(pwd)/src/ros2/cross_compile/cmake-toolchains/generic_linux.cmake" \
#        -DSECURITY=ON \
#	    -DCMAKE_BUILD_TYPE=RELWITHDEBINFO 
#
#sudo rm -rf $TARGET_DIR/rootfs/home/$UBUNTU_USER/ros2_ws/src/ros2
#
#sudo chroot $UBUNTU_ROOTFS_DIR/ "chown $UBUNTU_USER:$UBUNTU_USER home/$UBUNTU_USER"

cd $TARGET_DIR

unmount_qemu

# Workaround
chmod 4755 $UBUNTU_ROOTFS_DIR/usr/bin/sudo 

echo Finished building Ubuntu
echo

