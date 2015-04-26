#!/bin/bash -eux

echo "==> Setting UTC localtime"
sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime

echo "==> Updating APT package cache"
sudo apt-get update -y

echo "==> Installing build-essential"
sudo apt-get install -y build-essential

echo "==> Installing software-properties-common"
sudo apt-get install -y software-properties-common

echo "==> Installing python-properties-common"
sudo apt-get install -y python-software-properties
