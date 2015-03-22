#!/bin/bash -eux

SSH_USER=${SSH_USERNAME:-vagrant}

export HOME=/home/${SSH_USER}

echo "==> Installing nvm"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
echo "source ~/.nvm/nvm.sh" >> /home/${SSH_USER}/.bashrc
source /home/${SSH_USER}/.nvm/nvm.sh

echo "==> Installing latest stable io.js"
nvm install iojs
nvm alias default iojs

chown -R ${SSH_USER}:${SSH_USER} /home/${SSH_USER}/.nvm
export HOME=/home/root
