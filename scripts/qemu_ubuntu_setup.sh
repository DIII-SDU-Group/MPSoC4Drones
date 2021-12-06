#!/bin/bash

# Stop script if error
set -e

# Initial update
apt update

# Get very basic packages
apt install -y \
	apt-utils \
	perl \
	libterm-readline-perl-perl \
	make \
	libb-debug-perl \
	liblocale-codes-perl \
	dialog \
	locales

# Set locales
locale-gen en_US.UTF-8
update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8 

# Set timezone UTF
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

# Upgrade packages
apt upgrade -y

# Install sudo
apt install -y sudo

# Add specified user
UBUNTU_USER=$(cat /mp4d_settings/ubuntu_user)

useradd -G sudo -m -s /bin/bash $UBUNTU_USER
echo $UBUNTU_USER:$(cat /mp4d_settings/ubuntu_password) | chpasswd
echo root:$(cat /mp4d_settings/ubuntu_password) | chpasswd

usermod -aG sudo $UBUNTU_USER

# Install all other specified packages
xargs -r -a /mp4d_settings/ubuntu_packages.txt apt -y install

# Prepare for ros2 installation
apt install -y software-properties-common
add-apt-repository universe

curl -sSL $(cat /mp4d_settings/ros_distro_key_url)  -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] $(cat /mp4d_settings/ros2_package_url) $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

apt update

#Install ros2
apt install -y ros-galactic-ros-base

echo "source /opt/ros/galactic/setup.bash" >> /home/$UBUNTU_USER/.bashrc

# Create ros2_ws folder in specified user's home dir
su - $UBUNTU_USER -c "mkdir -p ~/ros2_ws/src"

# Final update and upgrade
apt update
apt upgrade -y

## Load wilc module on boot
#echo "wilc-sdio" > /etc/modules-load.d/wilc-sdio.conf

# chown sudo
chown root:root /usr/bin/sudo 
chmod 4755 /usr/bin/sudo 

