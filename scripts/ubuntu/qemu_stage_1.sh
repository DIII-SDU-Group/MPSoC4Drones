#!/bin/bash

# Stop script if error
set -e

# Initial update
apt update

# Get very basic packages
DEBIAN_FRONTEND=noninteractive xargs -r -a /mp4d_settings/stage_1_packages.txt apt -y install

# Set locales
locale-gen en_US.UTF-8
update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8 

# Set timezone UTF
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

# Update and upgrade
apt update && apt upgrade -y 

# Link ld-linux-armhf.so.3
ln -s /usr/arm-linux-gnueabihf/lib/ld-linux-armhf.so.3 /usr/lib/ld-linux-armhf.so.3

# Link libssl.so.1.1
ln -s /usr/lib/aarch64-linux-gnu/libssl.so.1.1 /usr/lib/libssl.so.1.1

# XRT dependency
pip3 install pybind11

# Update 
apt update




