# $FreeBSD: devel/pear-Horde_Prefs/Makefile 323135 2013-07-16 23:00:57Z mm $

PORTNAME=	Horde_Prefs
PORTVERSION=	2.5.0
CATEGORIES=	devel www pear

MAINTAINER=	horde@FreeBSD.org
COMMENT=	Horde Preferences API

USE_HORDE_RUN=	Horde_Exception \
		Horde_Mail \
		Horde_Mime \
		Horde_Translation \
		Horde_Util
USE_PHP=	json

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear-channel-horde/bsd.horde.mk"
.include <bsd.port.post.mk>
