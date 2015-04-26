#!/bin/bash -eux

SSH_USER=${SSH_USERNAME:-vagrant}

su ${SSH_USER} <<EOF
echo "==> Trusting Michal Papis"
curl -sSL https://rvm.io/mpapis.asc | gpg --import -

echo "==> Installing RVM"
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

echo "==> Installing Ruby 2.1"
rvm use --install --default 2.1
rvm cleanup all
EOF

chown -R ${SSH_USER}:${SSH_USER} /home/${SSH_USER}
