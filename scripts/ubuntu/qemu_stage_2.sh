#!/bin/bash

# Stop script if error
set -e

# Initial update
apt update

# Get very basic packages
DEBIAN_FRONTEND=noninteractive xargs -r -a /mp4d_settings/stage_2_packages.txt apt -y install

