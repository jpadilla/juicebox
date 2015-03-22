#!/bin/bash -eux

echo "==> Installing Sublime Text 3"
sudo wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3065_amd64.deb
sudo dpkg -i --force-depends sublime-text_build-3065_amd64.deb
sudo apt-get install -f -y
sudo rm  sublime-text_build-3065_amd64.deb
