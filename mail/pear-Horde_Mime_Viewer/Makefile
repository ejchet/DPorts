# Ports collection makefile for:  pear-Horde_Mime_Viewer
# Date created:			  7 July 2011
# Whom:				  Martin Matuska <mm@FreeBSD.org>
#
# $FreeBSD: mail/pear-Horde_Mime_Viewer/Makefile 319377 2013-05-29 15:02:18Z mm $

PORTNAME=	Horde_Mime_Viewer
PORTVERSION=	2.0.5
CATEGORIES=	mail www pear

MAINTAINER=	horde@FreeBSD.org
COMMENT=	Horde MIME Viewer Library

CONFLICTS=	horde-3*

USE_HORDE_BUILD=	Horde_Role

USE_HORDE_RUN=	Horde_Role \
		Horde_Browser \
		Horde_Compress \
		Horde_Exception \
		Horde_Mime \
		Horde_Text_Filter \
		Horde_Text_Flowed \
		Horde_Util \
		Horde_Translation

USE_PHP=	xml

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear-channel-horde/bsd.horde.mk"
.include <bsd.port.post.mk>
