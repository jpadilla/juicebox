#!/usr/bin/env bash

# Exit script immediately on first error.
set -e

# Print commands and their arguments as they are executed.
set -x

SSH_USER=${SSH_USERNAME:-vagrant}

export HOME=/home/${SSH_USER}

# Install nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
echo "source ~/.nvm/nvm.sh" >> /home/${SSH_USER}/.bashrc
source /home/${SSH_USER}/.nvm/nvm.sh

# Install latest stable Node.js version
nvm install stable
nvm alias default stable

chown -R ${SSH_USER}:${SSH_USER} /home/${SSH_USER}/.nvm
export HOME=/home/root
