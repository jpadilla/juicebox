#!/bin/bash -eux

SSH_USER=${SSH_USERNAME:-vagrant}

echo "==> Installing Sublime Text 3"
sudo wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_amd64.deb
sudo dpkg -i --force-depends sublime-text_build-3065_amd64.deb
sudo apt-get install -f -y
sudo rm  sublime-text_build-3065_amd64.deb

echo "==> Installing Package Control"
sudo wget --directory-prefix="/home/${SSH_USER}/.config/sublime-text-3/Installed Packages" "https://packagecontrol.io/Package Control.sublime-package"
sudo chown -R ${SSH_USER}:${SSH_USER} /home/${SSH_USER}/.config
