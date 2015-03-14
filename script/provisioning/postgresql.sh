#!/usr/bin/env bash

# Exit script immediately on first error.
set -e

# Print commands and their arguments as they are executed.
set -x

# Install postgresql
sudo apt-get -y install libpq-dev postgresql

# Configure postgresql
echo "listen_addresses = '*'" | sudo -u postgres tee -a /etc/postgresql/9.3/main/postgresql.conf
echo "host all all 0.0.0.0/0 md5" | sudo -u postgres tee -a /etc/postgresql/9.3/main/pg_hba.conf
sudo service postgresql restart
