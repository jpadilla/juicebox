#!/bin/bash -eux

SSH_USER=${SSH_USERNAME:-vagrant}

export HOME=/home/${SSH_USER}

RVM_PATH=${HOME}/.rvm

echo "==> Trusting Michal Papis"
curl -sSL https://rvm.io/mpapis.asc | gpg --import -

echo "==> Installing RVM"
curl -sSL https://get.rvm.io | bash -s stable

echo "==> Installing Ruby 2.1"
source ${RVM_PATH}/scripts/rvm
rvm use --install 2.1

chown -R ${SSH_USER}:${SSH_USER} ${RVM_PATH}
export HOME=/home/root
