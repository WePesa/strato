#!/bin/bash

set -e

PREFIX=$1

export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get -y install \
  python-sphinx \
  build-essential \
  cmake \
  git \
  libboost-all-dev \
  libjsoncpp-dev

srcdir=$(mktemp -d /tmp/build-solc.XXXX)
git clone --recursive --branch v0.3.6 https://github.com/ethereum/solidity.git $srcdir
mkdir -p $srcdir/build
pushd $srcdir/build >&/dev/null

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX ..
make -j4 solc
make install

popd >&/dev/null

