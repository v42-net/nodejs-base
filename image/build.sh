#!/bin/sh
set -e

# get the latest OS updates & fixes ...
apt-get -y update

# install the base npm packages ...
npm install -g npm
npm install -g config
npm install -g js-yaml

# reclaim some space by cleaning up ...
npm cache clean --force
rm -rf /build*
