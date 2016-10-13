#!/bin/bash

set -e

#Set up input params

bindir=$builddir/usr/bin
stratohome=$builddir/var/lib/strato

################

mkdir -p $bindir
mkdir -p $stratohome

stack install alex happy
stack install --local-bin-path=$bindir
cp mkCoinbase $stratohome

cd $stratohome
mkdir -p node_modules
npm install blockapps-js yaml-parser

# Build our own solc because we need a specific version
solcdir=$pkgdir/solidity/build

if [[ -d $solcdir ]]
then
  echo "$solcdir already exists, so solc was built.  Not rebuilding."
  exit
fi

git -C $pkgdir clone --recursive --branch v0.3.6 https://github.com/ethereum/solidity.git
mkdir -p $solcdir

cd $solcdir
cmake -DCMAKE_INSTALL_PREFIX=$builddir/usr ..
make -j4 solc
make install

