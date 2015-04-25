#!/bin/bash -eux

SSH_USER=${SSH_USERNAME:-vagrant}

echo "==> Creating /data directory"
mkdir /data
chown ${SSH_USER}:${SSH_USER} /data
