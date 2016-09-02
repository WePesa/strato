#!/bin/bash

set -e

#Set up input params

PKGDIR=${PKGDIR:-./package}
ROOTDIR=${ROOTDIR:-$PKGDIR/root}
BINDIR=${BINDIR:-$ROOTDIR/usr/bin}

################

if [ ! "`ls -A $PKGDIR`" == "" ]
then
	echo "directory not empty"
	exit 1
fi

mkdir -p $ROOTDIR

stack install --local-bin-path=$BINDIR