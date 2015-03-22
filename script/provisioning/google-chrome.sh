#!/bin/bash -eux

echo "==> Installing Google Chrome"
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y
sudo rm google-chrome-stable_current_amd64.deb
