#!/bin/bash

set -e

#Set up input params

builddir=${builddir:-./pkg/build}
bindir=$builddir/usr/bin

################

if [ -n $(ls -A $builddir)]
then
	echo "directory not empty"
	exit 1
fi

mkdir -p $bindir

stack install alex happy
stack install --local-bin-path=$bindir
