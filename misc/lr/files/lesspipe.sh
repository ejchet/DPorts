#! /bin/sh
# ex:ts=8

# $FreeBSD: ports/misc/lr/files/lesspipe.sh,v 1.2 2012/11/17 05:59:41 svnexp Exp $

case "$1" in
	*.Z)	uncompress -c $1	2>/dev/null
		;;
	*.gz)	gzip -d -c $1		2>/dev/null
		;;
	*.bz2)	bzip2 -d -c $1		2>/dev/null
		;;
esac
