#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y build-essential gcc g++ make
sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install --global @vue/cli
sudo npm install --global @vue/cli-init

# npm update check perms
sudo chown -R $USER:$(id -gn $USER) /home/ubuntu/.config
