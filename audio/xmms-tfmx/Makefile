# Created by: Anders Nordby <anders@fix.no>
# $FreeBSD: audio/xmms-tfmx/Makefile 313559 2013-03-07 03:25:10Z bdrewery $

PORTNAME=	xmms-tfmx
PORTVERSION=	0.5
PORTREVISION=	4
CATEGORIES=	audio
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}.tar.gz

MAINTAINER=	c.petrik.sosa@gmail.com
COMMENT=	XMMS Input plugin for playing TFMX tunes

LIB_DEPENDS=	xmms.4:${PORTSDIR}/multimedia/xmms

USE_GNOME=	gtk12 lthack
USE_GMAKE=	yes
USE_AUTOTOOLS=	libtool

PLIST_FILES=	lib/xmms/Input/libtfmx.so

do-install:
	${MKDIR} ${PREFIX}/lib/xmms/Input
	${INSTALL_DATA} ${WRKSRC}/src/.libs/libtfmx.so ${PREFIX}/lib/xmms/Input

.include <bsd.port.mk>
