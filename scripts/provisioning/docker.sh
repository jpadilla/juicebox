#!/bin/bash -eux

SSH_USER=${SSH_USERNAME:-vagrant}

echo "==> Installing Docker"
wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker ${SSH_USER}
