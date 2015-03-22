#!/bin/bash

SSH_USER=${SSH_USERNAME:-vagrant}
LIGHTDM_CONFIG=/etc/lightdm/lightdm.conf

echo "==> Checking version of Ubuntu"
. /etc/lsb-release

if [[ $DISTRIB_RELEASE == 14.04 ]]; then
  echo "==> Installing xubuntu-desktop"
  apt-get install -y --no-install-recommends \
    xubuntu-desktop \
    xfce4-goodies \
    xubuntu-icon-theme

  echo "==> Configuring lightdm autologin"
  echo "[SeatDefaults]" >> $LIGHTDM_CONFIG
  echo "autologin-user=${SSH_USER}" >> $LIGHTDM_CONFIG
fi
