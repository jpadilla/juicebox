#!/bin/bash -eux

echo "==> Installing Docker"
wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker juicebox
