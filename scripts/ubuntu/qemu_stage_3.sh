#!/bin/bash

# Stop script if error
set -e

# Get settings
UBUNTU_HOST_NAME=$(cat /mp4d_settings/ubuntu_host_name)
UBUNTU_USER=$(cat /mp4d_settings/ubuntu_user)

# Upgrade packages
apt update
apt upgrade -y

# Install sudo
apt install -y sudo

# Change host name
echo $UBUNTU_HOST_NAME > /etc/hostname

# Add specified user
useradd -G sudo -m -s /bin/bash $UBUNTU_USER
echo $UBUNTU_USER:$(cat /mp4d_settings/ubuntu_password) | chpasswd
echo root:$(cat /mp4d_settings/ubuntu_password) | chpasswd

usermod -aG sudo $UBUNTU_USER

# Install all other specified packages
xargs -r -a /mp4d_settings/stage_3_packages.txt apt -y install

## Load wilc module on boot
echo "wilc-sdio" > /etc/modules-load.d/wilc-sdio.conf

# dialout
adduser $UBUNTU_USER dialout

# sudo
chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo


