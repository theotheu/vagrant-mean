#!/usr/bin/env bash

apt-get update -q -y
apt-get upgrade -q -y

apt-get -y -q install curl

# install mongodb
apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
apt-get -y -q update
apt-get -y -q install mongodb-10gen

# install node.js
apt-get install -q -y build-essential curl
cd /tmp
wget http://nodejs.org/dist/node-latest.tar.gz
tar -zxvf node-latest.tar.gz
cd node-v*
./configure
make
make install

