#!/bin/bash

set -e

#Set up input params

bindir=$builddir/usr/bin

################

mkdir -p $bindir

stack install alex happy
stack install --local-bin-path=$bindir

# Build our own solc because we need a specific version
solcdir=$pkgdir/solidity/build
git -C $pkgdir clone --recursive --branch v0.3.6 https://github.com/ethereum/solidity.git
mkdir -p $solcdir

cd $solcdir
cmake -DCMAKE_INSTALL_PREFIX=$builddir/usr ..
make -j4 solc
make install

