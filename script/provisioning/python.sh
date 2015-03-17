#!/bin/bash -eux

SSH_USER=${SSH_USERNAME:-vagrant}

export HOME=/home/${SSH_USER}

echo "==> Installing Python 2.7"
sudo add-apt-repository -y ppa:fkrull/deadsnakes
sudo apt-get update
sudo apt-get install -y python python-dev

echo "==> Installing setuptools"
sudo wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py
sudo python ez_setup.py
rm ez_setup.py setuptools-*

echo "==> Installing pip"
sudo easy_install pip

echo "==> Installing virtualenvwrapper"
sudo pip install virtualenvwrapper

echo "==> Configuring virtualenvwrapper"
mkdir -p ${HOME}/.virtualenvs
echo "WORKON_HOME=${HOME}/.virtualenvs" >> ${HOME}/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ${HOME}/.bashrc

chown -R ${SSH_USER}:${SSH_USER} ${HOME}/.virtualenvs
export HOME=/home/root
