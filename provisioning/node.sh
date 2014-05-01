#!/usr/bin/env bash

# Exit script immediately on first error.
set -e

# Print commands and their arguments as they are executed.
set -x

# Install Node.js
sudo apt-add-repository -y ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get -y install nodejs
