# MPSoC4Drones
MPSoC architecture for accelerating drone components and interfacing with ROS2.

The work has been tested on:

- **Host Platform**: Ubuntu 20.04 LTS
- **Target Development Software**: Vivado/Vitis 2020.2 + PetaLinux 2020.2
- **Target Development Board**: [Ultra96-V2](https://www.avnet.com/shop/us/products/avnet-engineering-services/aes-ultra96-v2-g-3074457345638646173/) with [U96 JTAG/UART to USB adapter](https://www.avnet.com/shop/us/products/avnet-engineering-services/aes-acc-u96-jtag-3074457345635355958/)

## Installation steps:

Clone the project: 

```bash
git clone https://github.com/DIII-SDU-Group/MPSoC4Drones.git
```

After cloning the project, open Vivado and choose `Tools -> Run Tcl Script...` and select the `U20U96.tcl` file created earlier. This will regenerate the project.

The project has the essential units to run Ubuntu 20.04 on the Ultra96V2. However, one can add extra elements to the PL and regenerate the Bitstream. 

This Vivado project includes an IP to control the fan using a PWM IP. To do so, download the IP from [Avent Github](https://github.com/Avnet/hdl/tree/2020.2) [branch 2020.2] and go to Settings > IP > Repository and point to the directory for `PWM_w_Int`.

After modifying the project, export the hardware to the default directory (checking the box to 'include bitstream'). This will generate the XSA file in the project directory. 

> If you did not add any new design that involves new memory addresses, then you can skip the creation of the linux system and only update the new bitstream in the BOOT.bin file that is in images/linux folder.  Example: `petalinux-package --boot --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/system.bit --pmufw ./images/linux/pmufw.elf --u-boot`



To create the PetaLinux project, first run the PetaLinux environment  settings script to source the needed command set. Then run the  following:

```bash
petalinux-create --type project --template zynqMP --name U20U96
```

Point to the new  XSA hardware definition with the 'petalinux-config' command.

```bash
petalinux-config --get-hw-description /<location of XSA file>
```

This command will bring up the hardware system configuration editor. 

> Check  under Subsystem AUTO Hardware Settings that the "primary stdin/stdout" is `PSU_UART1`. 
>
> Check also that the boot is from the SD card. From Subsystem AUTO Hardware Settings -> Advanced bootable images storage settings. -> 'primary SD'.
>
> Check the root filesystem type is EXT (SD/eMMC/QSPI/SATA/USB) and the option for 'Copy final images to  tftpboot' unchecked. That is under the Image Packaging Configuration tab.

Afterwards, we need to create through PetaLinux  a bare minimum device tree for the Zynq MPSoC system. run:

```
petalinux-build
```

This will take quite a while (few hours) :)

In the meantime, we partition the SD card.

Two partitions are required, the first named (BOOT) being FAT32 with 4MB of free space ahead of it and the second named (rootfs) being EXT4 taking up the  rest of the space on the SD card. One can do that using **gparted** App.

Once the build is done, a boot image binary (BOOT.BIN) needs to be created from the first stage bootloader, FPGA bitstream, PMU firmware, and u-boot environment. Using the 'petalinux-package' command, specify the paths to  the bitstream and ELF files for everything located in *<PetaLinux project directory>/images/linux*. The boot image binary file will be generated in this same directory.

```
petalinux-package --boot --fsbl ./images/linux/zynqmp_fsbl.elf --fpga ./images/linux/system.bit --pmufw ./images/linux/pmufw.elf --u-boot
```

Mount the SD card to the host system (your PC) and copy onto the FAT32 partition the follows from */images/linux*:

1. the boot  image binary (BOOT.BIN), 
2. kernel image (image.ub), 
3. device tree blob  (system.dtb) . 

Then download *Ubuntu 20.04* image for ARM64 architecture from CDimage.ubuntu.com and use the tar command to extract the root file system (rootfs.tar.gz) onto the EXT4 partition of the SD card. 

```bash
wget http://cdimage.ubuntu.com/ubuntu-base/releases/20.04/release/ubuntu-base-20.04.1-base-arm64.tar.gz
```

Copy the Ubuntu rootfs in to the second partition in the sdcard

```bash
sudo tar xfvp  ./ubuntu-base-20.04.1-base-arm64.tar.gz -C /media/<username>/rootfs/

sync
```

To add libraries to the linux image from your PC, 

1. Install qemu tool

```bash
sudo apt-get install qemu-user-static
```

2. Copy these config files into the sdcard

```
sudo cp -av /usr/bin/qemu-aarch64-static /media/<username>/rootfs/usr/bin/

sudo cp -av /run/systemd/resolve/stub-resolv.conf /media/<username>/rootfs/etc/resolv.conf
```

3.  Create these mount points

```
sudo mount --bind /dev/ /media/<username>/rootfs/dev
sudo mount --bind /proc/ /media/<username>/rootfs/proc
sudo mount --bind /sys/ /media/<username>/rootfs/sys
```

4.  Boot the sdcard rootfs using the qemu

```
sudo chroot  /media/<username>/rootfs/
```

5. add a new user and create a password (you can change username and password)

```
useradd -G sudo -m -s /bin/bash <username>
echo <username>:<password> | chpasswd
```

6. Install a few software on the sdcard rootfs

```bash
apt-get update
apt-get upgrade
apt-get -y install locales dialog perl ifupdown net-tools ethtool udev wireless-tools iputils-ping resolvconf wget apt-utils wpasupplicant nano kmod openssh-client openssh-server build-essential cmake git
```

7. Quit the quem by running the “exit” command

8. Perform these umount commads

```
sudo umount  /media/<username>/rootfs/dev
sudo umount  /media/<username>/rootfs/proc
sudo umount  /media/<username>/rootfs/sys
```



Insert the SD card to the Ultra96V2 and access it using the serial port (Baudrate 115200) or the screen. switch on the board and Linux system will start loading. Login with your user name and password that are created in Step 5. Enjoy!.

P.S. the work is in progress, so, bugs due to different OS or tools versions may arises. We work continuously to upgrading the system to the latest available tools. 



## Installing ROS2

Steps are taking from ROS2 setup page: https://docs.ros.org/en/foxy/Installation/Ubuntu-Development-Setup.html

#### Add the ROS2 apt repository

Authorize the GPG key with apt like this:

```bash
sudo apt update && sudo apt install curl gnupg2 lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg
```

Then add the repository to your sources list:

```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
```

Install development ROS tools

```bash
sudo apt update && sudo apt install -y \
  build-essential \
  cmake \
  git \
  libbullet-dev \
  python3-colcon-common-extensions \
  python3-flake8 \
  python3-pip \
  python3-pytest-cov \
  python3-rosdep \
  python3-setuptools \
  python3-vcstool \
  wget
# install some pip packages needed for testing
python3 -m pip install -U \
  argcomplete \
  flake8-blind-except \
  flake8-builtins \
  flake8-class-newline \
  flake8-comprehensions \
  flake8-deprecated \
  flake8-docstrings \
  flake8-import-order \
  flake8-quotes \
  pytest-repeat \
  pytest-rerunfailures \
  pytest
# install Fast-RTPS dependencies
sudo apt install --no-install-recommends -y \
  libasio-dev \
  libtinyxml2-dev
# install Cyclone DDS dependencies
sudo apt install --no-install-recommends -y \
  libcunit1-dev
```

Create a workspace and clone all repos:

```bash
mkdir -p ~/ros2_foxy/src
cd ~/ros2_foxy
wget https://raw.githubusercontent.com/ros2/ros2/foxy/ros2.repos
vcs import src < ros2.repos
```

Install dependencies using rosdep

```bash
sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro foxy -y --skip-keys "console_bridge fastcdr fastrtps rti-connext-dds-5.3.1 urdfdom_headers"
```

Build the code:

```bash
cd ~/ros2_foxy/
colcon build --symlink-install
```

Set up your environment by sourcing the following file.

```
. ~/ros2_foxy/install/local_setup.bash
```
