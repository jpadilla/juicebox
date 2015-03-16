#!/bin/bash -eux

echo "==> Installing Python 2.7"
sudo add-apt-repository -y ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install -y python python-dev

echo "==> Installing setuptools"
sudo wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
sudo python ez_setup.py

echo "==> Installing pip"
sudo easy_install pip

# TODO: Setup virtualenvwrapper
echo "==> Installing virtualenvwrapper"
sudo pip install virtualenvwrapper
