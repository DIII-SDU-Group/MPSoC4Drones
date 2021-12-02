#!/bin/bash
#
# This script builds the hardware (synthesis and implementation of the Vivado project).
# Options can be specified to
#	1)	clear runs and build the hardware;
#	2)	export hardware specification, overwriting existing hardware specfication in Vivado project;
#	3) 	or both of the above.

set -e

SCRIPTS_DIR=$(realpath $0 | xargs dirname)

source $SCRIPTS_DIR/settings.sh
