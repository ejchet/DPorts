# $FreeBSD: x11-drivers/xf86-video-openchrome/Makefile 319055 2013-05-25 14:37:02Z zeising $

PORTNAME=	xf86-video-openchrome
PORTVERSION=	0.3.3
CATEGORIES=	x11-drivers

MAINTAINER=	x11@FreeBSD.org
COMMENT=	X.Org openChrome display driver

USE_GL=		gl

XORG_CAT=	driver
USE_XORG=	xf86driproto xvmc glproto
MAN4=		openchrome.4x

MAKE_ARGS+=	drivermandir=${LOCALBASE}/man/man4

ONLY_FOR_ARCHS=	amd64 i386 ia64

.include <bsd.port.mk>
