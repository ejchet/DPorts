#!/bin/sh
# $FreeBSD: Tools/scripts/release/setup.sh 300895 2012-07-14 12:56:14Z beat $

dir=$@
if [ -z $dir ]; then
	echo "Usage: $0 <path to dir with ports and packages to split>"
	exit 1
fi
if [ ! -d $dir ]; then
	echo "Directory not found.  Aborting."
	exit 1
fi

tar xzvf $dir/ports.tar.gz
cd ports
rm -f distfiles packages
mkdir distfiles packages
(echo "copying packages ..." && cd packages && cp -R $dir/packages/ .)
#(echo "copying distfiles ..." && cd distfiles && cp -R $dir/distfiles/ .)
