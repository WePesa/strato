#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y install curl
curl -sL https://deb.nodesource.com/setup_6.x | bash -
apt-get -y install libleveldb-dev libpq-dev libpcre3-dev nodejs

