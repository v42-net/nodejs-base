#!/bin/sh
set -e

# update the OS
apt-get -y update

# install the base npm packages ...
npm install -g npm
npm install -g config
npm install -g js-yaml

# reclaim space by cleaning up ...
npm cache clean --force
rm -rf /build*
