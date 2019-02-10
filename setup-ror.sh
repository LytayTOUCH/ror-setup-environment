#!/bin/bash

# Author: LytayTOUCH, CLCAM-V28DEC2015
#-------------------------------------
# Setup Ruby on Rails Environment
#-------------------------------------
# Usage
# Run script: change file mode into execution
# Command: $ sudo chmod +x setup-ROR.sh

# Setup command
# Command: $ ./setup-ROR.sh

#--------------------------------------
# Update Server
#--------------------------------------
echo -e "---- Update Server ----"
sudo apt-get update -y
sudo apt-get upgrade -y

#--------------------------------------
# Install neccessary dependencies packages
#--------------------------------------
echo -e "---- Install Neccessary Dependencies Packages Into Server ----"
sudo apt install gnupg2 curl -y
sudo apt-get install curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev -y

#-----------------------------------------
# Install RVM with Ruby & Rails
#-----------------------------------------
RUBY_VERSION="2.5.0"
RAILS_VERSION="5.2.2"
echo -e "---- Install RVM with Ruby $RUBY_VERSION & Rails $RAILS_VERSION Into Server ----"
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev -y
gpg2 --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
echo -e "---- Install Ruby Packages $RUBY_VERSION ----"
rvm install $RUBY_VERSION
source ~/.rvm/scripts/rvm
echo -e "---- Set Ruby $RUBY_VERSION as Default ----"
rvm use $RUBY_VERSION --default
echo -e "---- Disable Download RDoc of Rails Package ----"
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

echo -e "---- Show Gem List ----"
gem list
echo -e "---- Install Rails Framework $RAILS_VERSION ----"
gem install rails -v $RAILS_VERSION

#-----------------------------------------
# Update all packages dependencies
#-----------------------------------------
echo -e "---- Update All Packages Dependencies Into Server ----"
sudo apt-get dist-upgrade -y
source ~/.profile
