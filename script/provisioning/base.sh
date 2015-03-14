#!/bin/bash -eux

# Set UTC localtime
sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime

# Update APT package cache
sudo apt-get update -y

# Install build-essential
sudo apt-get install -y build-essential

# Install software-properties-common
sudo apt-get install -y software-properties-common

# Install python-software-properties
sudo apt-get install -y python-software-properties
