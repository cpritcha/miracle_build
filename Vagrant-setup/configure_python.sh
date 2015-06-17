#!/bin/bash

apt-get install -y python-gdal
apt-get install -y build essential python-all-dev
apt-get install -y python-setuptools
apt-get install -y python-dev
apt-get install -y g++

add-apt-repository ppa:ubuntugis/ubuntugis-unstable
apt-get update
  
easy_install pip
pip install virtualenv
apt-get install -y virtualenvwrapper

echo "Adding Python Libraries"

cd /home/vagrant
if [ -d ".virtualenvs" ]; then
  cd .virtualenvs
else
  mkdir .virtualenvs
  cd .virtualenvs
fi

if [ -d "miracle" ]; then
  echo Miracle Project Virtual Environment Already Made
else
  virtualenv miracle
  echo Made Virtual Environment for the Miracle Project
fi

cd miracle/bin
./pip install -Ur /vagrant/requirements.txt

