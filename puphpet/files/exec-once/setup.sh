#!/bin/sh

sudo apt-get update
sudo apt-get upgrade
source ~/.bashrc
sudo wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Required for SASS
sudo `which gem` install compass

# Lets use easily drop/re-create database during development
sudo su - postgres -c 'psql -c "ALTER DATABASE opendatahub OWNER TO opendatahub;" && psql -c "ALTER USER opendatahub CREATEDB;"'