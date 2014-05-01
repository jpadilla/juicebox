#!/usr/bin/env bash

# Exit script immediately on first error.
set -e

# Print commands and their arguments as they are executed.
set -x

# Install redis-server
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv C7917B12
sudo echo 'deb http://ppa.launchpad.net/chris-lea/redis-server/ubuntu precise main' >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y redis-server

# Configure redis-server
sudo sed -i 's/bind 127.0.0.1/# bind 127.0.0.1/g' /etc/redis/redis.conf
sudo echo 'vm.overcommit_memory = 1' | sudo tee -a /etc/sysctl.conf
sudo sysctl vm.overcommit_memory=1
sudo service redis-server restart