# Created by: Eric Anholt <anholt@FreeBSD.org>
# $FreeBSD: x11/libXau/Makefile 319055 2013-05-25 14:37:02Z zeising $

PORTNAME=	libXau
PORTVERSION=	1.0.8
CATEGORIES=	x11

MAINTAINER=	x11@FreeBSD.org
COMMENT=	Authentication Protocol library for X11

XORG_CAT=	lib
USE_XORG=	xproto:both

MAN3=		Xau.3 XauDisposeAuth.3 XauFileName.3 XauGetAuthByAddr.3 \
		XauGetBestAuthByAddr.3 XauLockAuth.3 XauReadAuth.3 \
		XauUnlockAuth.3 XauWriteAuth.3

post-install:
	${LN} -sf ${PREFIX}/lib/libXau.so.6 ${PREFIX}/lib/libXau.so.0

.include <bsd.port.mk>
