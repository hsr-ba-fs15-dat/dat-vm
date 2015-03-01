#!/bin/sh

sudo apt-get update
sudo apt-get upgrade
source ~/.bashrc
sudo wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh


# ------ Frontend
cd /vagrant/webapp/frontend

# Required for SASS
sudo `which gem` install compass

# Cleanup
rm -rf bower_components node_modules

# Install deps

npm install
bower install --config.analytics=false --allow-root


# ------ Backend
cd /vagrant/webapp/backend

# Cleanup
rm -rf env target

# Create virtualenv with existing packages (see config.yaml)
virtualenv --system-site-packages env
source env/bin/activate

# Install all requirements.txt and requirements_dev.txt dependencies
pyb install_dependencies
