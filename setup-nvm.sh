#!/bin/bash

#-----------------------------------------
#Install NVM for nodejs package manager
#-----------------------------------------
echo -e "---- Install NVM for Nodejs Package Manager Into Server ----"
NVM_VERSION="0.34.0"
curl -o- https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh | bash
source ~/.profile
echo -e "---- Install NodeJS and IOJS Into NVM ----"
. ~/.nvm/nvm.sh
nvm install stable
nvm install iojs
echo -e "---- Set NodeJS as Default Framework ----"
nvm alias default stable
nvm use default
