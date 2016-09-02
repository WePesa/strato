
set -e

prefix=${prefix:-./package}
bindir=${bindir:-$prefix/root/usr/bin}

if [ ! "`ls -A $prefix`" == "" ]
then
	echo "directory not empty"
fi

mkdir -p $bindir

stack install --local-bin-path=$bindir