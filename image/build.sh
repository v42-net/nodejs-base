#!/bin/sh
set -e

# get the latest OS updates & fixes ...
apt-get -y update

# install the base npm packages ...
mkdir -p /opt/app
cd /opt/app
npm install npm
npm install config
npm install express
npm install js-yaml

# reclaim some space by cleaning up ...
npm cache clean --force
rm -rf /build*
