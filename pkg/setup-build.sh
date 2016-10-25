#!/bin/bash

set -e

$sudo apt-get -y install \
  lsb-release \
  curl libleveldb-dev libpq-dev libpcre3-dev \
  libboost-all-dev libjsoncpp-dev libstdc++6
$sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 575159689BEFB442
echo "deb http://download.fpcomplete.com/ubuntu $(lsb_release -s -c) main" | \
  sudo tee /etc/apt/sources.list.d/fpco.list
$sudo apt-get update
$sudo apt-get -y install stack
sed -i 's/resolver:.*/resolver: lts-3.4/' ~/.stack/global-project/stack.yaml
stack setup
stack install alex happy
