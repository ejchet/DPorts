# New ports collection makefile for:   pecl-amfext
# Date created:		11 February 2007
# Whom:			Piotr Rybicki <meritus@innervision.pl>
#
# $FreeBSD: ports/www/pecl-amfext/Makefile,v 1.8 2012/11/17 06:02:57 svnexp Exp $
#

PORTNAME=	amfext
PORTVERSION=	0.9.2
CATEGORIES=	www
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	PECL

MAINTAINER=	meritus@innervision.pl
COMMENT=	Implements encoding and decoding of AMF and AMF3 messages

USE_PHP=	yes
USE_PHPEXT=	yes
PHP_MODNAME=	amf
DEFAULT_PHP_VER=53
IGNORE_WITH_PHP=5

CONFIGURE_ARGS=	--enable-amf
CPPFLAGS+=	-I${LOCALBASE}/include/php/ext/standard

.include <bsd.port.mk>
