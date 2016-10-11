#!/bin/bash

set -e

#Set up input params

bindir=$builddir/usr/bin

################

mkdir -p $bindir

stack install alex happy
stack install --local-bin-path=$bindir
