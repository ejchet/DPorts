# New ports collection makefile for:	pecl-gmagick
# Date created:			7 Feb 2011
# Whom:				Dan Rowe <bsdports@csnstores.com>
#
# $FreeBSD: ports/graphics/pecl-gmagick/Makefile,v 1.3 2012/11/17 05:58:18 svnexp Exp $
#

PORTNAME=	gmagick
PORTVERSION=	1.0.8b1
CATEGORIES=	graphics
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	PECL

MAINTAINER=	bsdports@csnstores.com
COMMENT=	Provides a wrapper to the GraphicsMagick library

LIB_DEPENDS=	GraphicsMagick.1:${PORTSDIR}/graphics/GraphicsMagick

USE_PHP=	yes
USE_PHPEXT=	yes
DEFAULT_PHP_VER=53
IGNORE_WITH_PHP=5

CONFIGURE_ARGS=	--with-gmagick=${LOCALBASE}

.include <bsd.port.mk>
