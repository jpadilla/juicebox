#!/bin/bash

date > /etc/vagrant_box_build_time

SSH_USER=${SSH_USERNAME:-vagrant}
SSH_USER_HOME=${SSH_USER_HOME:-/home/${SSH_USER}}

# Packer passes boolean user variables through as '1', but this might change in
# the future, so also check for 'true'.
if [ "$INSTALL_VAGRANT_KEY" = "true" ] || [ "$INSTALL_VAGRANT_KEY" = "1" ]; then

  # Create Vagrant user (if not already present)
  if ! id -u $SSH_USER >/dev/null 2>&1; then
    echo "==> Creating $SSH_USER user"
    /usr/sbin/groupadd $SSH_USER
    /usr/sbin/useradd $SSH_USER -g $SSH_USER -G sudo -d $SSH_USER_HOME --create-home
    echo "${SSH_USER}:${SSH_USER}" | chpasswd
  fi

  # Set up sudo
  echo "==> Giving ${SSH_USER} sudo powers"
  echo "${SSH_USER}        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers

  echo "==> Installing vagrant key"
  mkdir $SSH_USER_HOME/.ssh
  chmod 700 $SSH_USER_HOME/.ssh
  cd $SSH_USER_HOME/.ssh

  wget --no-check-certificate \
    https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub \
    -O $SSH_USER_HOME/.ssh/authorized_keys

  chown -R $SSH_USER:$SSH_USER $SSH_USER_HOME/.ssh
fi
