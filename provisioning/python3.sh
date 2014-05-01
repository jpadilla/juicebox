#!/usr/bin/env bash

# Exit script immediately on first error.
set -e

# Print commands and their arguments as they are executed.
set -x

# Install Python 3
sudo add-apt-repository -y ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install -y python3.3 python3.3-dev

# Install setuptools
sudo wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
sudo python3.3 ez_setup.py

# Install pip
sudo easy_install-3.3 pip