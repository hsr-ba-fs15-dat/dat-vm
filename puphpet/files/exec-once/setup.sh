#!/bin/sh

sudo apt-get update
sudo apt-get upgrade
source ~/.bashrc
sudo wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Required for SASS
sudo `which gem` install compass

export PGPASSWORD=123
psql -U postgres -h localhost -c 'ALTER USER opendatahub CREATEDB;'