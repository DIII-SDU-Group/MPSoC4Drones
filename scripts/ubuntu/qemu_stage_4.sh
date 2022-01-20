#!/bin/bash

# Stop script if error
set -e

# Get settings
UBUNTU_HOST_NAME=$(cat /mp4d_settings/ubuntu_host_name)
UBUNTU_USER=$(cat /mp4d_settings/ubuntu_user)

# Upgrade packages
apt update
apt upgrade -y

# Prepare for ROS2 Foxy installation
apt update 
curl -sSL $(cat /mp4d_settings/ros_distro_key_url) -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] $(cat /mp4d_settings/ros2_package_url) $(source /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

# Install ROS2 Foxy
sudo apt update
sudo apt install -y ros-foxy-ros-base

echo "source /opt/ros/foxy/setup.bash" >> /home/$UBUNTU_USER/.bashrc

su - $UBUNTU_USER -c "mkdir -p ~/ros2_ws/src"

# Prepare for ROS2 cross-compilation
su - $UBUNTU_USER -c "cd ~/ros2_ws/ && git clone https://github.com/ros-tooling/cross_compile.git -b 0.0.1 src/ros2/cross_compile"

# Create ros2_ws folder in specified user's home dir
su - $UBUNTU_USER -c "mkdir -p ~/ros2_ws/src"

# Install PX4 dependencies
apt install -y python3-colcon-common-extensions ros-foxy-eigen3-cmake-module 
pip3 install -U empy pyros-genmsg setuptools

# Install Fast-RTPS-Gen
echo "export PATH=$PATH:/opt/gradle/gradle-6.3/bin" >> /home/$UBUNTU_USER/.bashrc

su - $UBUNTU_USER -c "git clone --recursive https://github.com/eProsima/Fast-DDS-Gen.git -b v1.0.4 ~/Fast-RTPS-Gen"
su - $UBUNTU_USER -c "cd ~/Fast-RTPS-Gen && /opt/gradle/gradle-6.3/bin/gradle assemble"
cd /home/$UBUNTU_USER/Fast-RTPS-Gen/ && /opt/gradle/gradle-6.3/bin/gradle install && cd /

# Get PX4 ROS packages
cd /home/$UBUNTU_USER/ros2_ws/src/
su - $UBUNTU_USER -c "cd ~/ros2_ws/src/ && git clone https://github.com/PX4/px4_ros_com.git"
su - $UBUNTU_USER -c "cd ~/ros2_ws/src/ && git clone https://github.com/PX4/px4_msgs.git"

# Sudo workaround
chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo

# Final update and upgrade
apt update
apt upgrade -y

# chown
chown -R root:root / 2> /dev/null
chown -R $UBUNTU_USER:$UBUNTU_USER /home/$UBUNTU_USER

