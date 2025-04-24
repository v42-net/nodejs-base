#!/bin/sh
set -e

# get the latest OS updates & fixes ...
apt-get -y update

# install the base npm packages ...
cd /opt/app
npm install -g npm
npm install config
npm install ejs
npm install express
npm install js-yaml

# reclaim some space by cleaning up ...
npm cache clean --force
rm -rf /build*
