#!/bin/bash

# Author: LytayTOUCH
#-------------------------------------
# Setup Git Tool
#-------------------------------------
# Usage
# Run script: change file mode into execution
# Command: $ sudo chmod +x setup-ROR.sh

#-----------------------------------------
# Install Latest Git
#-----------------------------------------
echo -e "---- Install Latest Git Into Server ----"
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update -y
sudo apt-get install git -y