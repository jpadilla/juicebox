#!/bin/bash -eux

echo "==> Installing postgresql"
sudo apt-get -y install libpq-dev postgresql

echo "==> Configuring postgresql"
echo "listen_addresses = '*'" | sudo -u postgres tee -a /etc/postgresql/9.3/main/postgresql.conf
echo "host all all 0.0.0.0/0 md5" | sudo -u postgres tee -a /etc/postgresql/9.3/main/pg_hba.conf

echo "==> Restarting postgresql"
sudo service postgresql restart
