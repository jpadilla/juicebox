#!/usr/bin/env bash

# Exit script immediately on first error.
set -e

# Print commands and their arguments as they are executed.
set -x

# Install Go
sudo apt-add-repository -y ppa:duh/golang
sudo apt-get update
sudo apt-get -y install golang