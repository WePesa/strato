#!/bin/bash

set -e

#Set up input params

PKGDIR=${PKGDIR:-./package}
ROOTDIR=${ROOTDIR:-$PKGDIR}
BINDIR=${BINDIR:-$ROOTDIR/usr/bin}

################

if [ ! "`ls -A $PKGDIR`" == "" ]
then
	echo "directory not empty"
	exit 1
fi

cp -a pkg/* $ROOTDIR

mkdir -p $ROOTDIR/usr/bin

stack install --local-bin-path=$BINDIR
./build-solc.sh $ROOTDIR/usr
