#!/bin/bash

./setup-ror.sh
sudo apt-get -f install -y
./setup-nvm.sh
sudo apt-get -f install -y
./setup-wkhtml.sh
sudo apt-get -f install -y
./setup-mysql.sh
sudo apt-get -f install -y
./setup-postgresql.sh
sudo apt-get -f install -y
./setup-nginx-passenger.sh
cd
source .bash_profile
