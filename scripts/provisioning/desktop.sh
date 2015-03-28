#!/bin/bash -eux

SSH_USER=${SSH_USERNAME:-vagrant}
HOME_DIR=/home/${SSH_USER}
DESKTOP_DIR=${HOME_DIR}/Desktop
CODE_DIR=${HOME_DIR}/Code
PICTURES_DIR=${HOME_DIR}/Pictures
CONFIG_DIR=${HOME_DIR}/.config
ASSETS_DIR=/data/assets

echo "==> Creating directories"
sudo mkdir -p ${PICTURES_DIR} ${CODE_DIR} ${DESKTOP_DIR} ${CONFIG_DIR}

echo "==> Setting up background"
sudo cp  ${ASSETS_DIR}/background.png ${PICTURES_DIR}
sudo chown -R ${SSH_USER}:${SSH_USER} ${PICTURES_DIR}

echo "==> Creating Code directory"
sudo ln -s ${CODE_DIR} ${DESKTOP_DIR}/Code
sudo chown ${SSH_USER}:${SSH_USER} ${CODE_DIR}

echo "==> Setting up desktop and panels"
sudo cp -r ${ASSETS_DIR}/xfce4 ${CONFIG_DIR}
sudo chown -R ${SSH_USER}:${SSH_USER} ${CONFIG_DIR}

echo "==> Copying README.html"
sudo cp  ${ASSETS_DIR}/README.html ${DESKTOP_DIR}/
sudo chown  ${SSH_USER}:${SSH_USER} ${DESKTOP_DIR}/README.html
