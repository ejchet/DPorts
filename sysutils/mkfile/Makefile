# Created by: HATANO Tomomi <hatanou@infolab.ne.jp>
# $FreeBSD: sysutils/mkfile/Makefile 321569 2013-06-22 12:18:39Z wg $

PORTNAME=	mkfile
PORTVERSION=	1.1.1
CATEGORIES=	sysutils
MASTER_SITES=	http://www.infolab.ne.jp/~hatanou/freebsd/mkfile/

MAINTAINER=	hatanou@infolab.ne.jp
COMMENT=	Create files suitable for use as swap files

MAN8=		mkfile.8
MANCOMPRESSED=	yes
PLIST_FILES=	sbin/mkfile

MAKE_ARGS=	BINDIR="${PREFIX}/sbin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
