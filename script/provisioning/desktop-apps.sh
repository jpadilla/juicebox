#!/bin/bash -eux

echo "==> Installing Sublime Text 3"
sudo add-apt-repository ppa:webupd8team/sublime-text-3

echo "==> Installing Google Chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get update
sudo apt-get install -y \
    sublime-text-installer \
    google-chrome-stable
