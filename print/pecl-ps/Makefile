# Ports collection makefile for:  pear-ps
# Date created:		25 May 2007
# Whom:			Alan Garfield <alan@fromorbit.com>
#
# $FreeBSD: ports/print/pecl-ps/Makefile,v 1.12 2012/11/17 06:00:53 svnexp Exp $
#

PORTNAME=	ps
PORTVERSION=	1.3.6
PORTREVISION=	2
CATEGORIES=	print pear
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
DISTNAME=	ps-${PORTVERSION}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	PECL

MAINTAINER=	alan@fromorbit.com
COMMENT=	PHP extension for pslib to generate postscript

LIB_DEPENDS=	ps.4:${PORTSDIR}/print/pslib

USE_PHP=	yes
USE_PHPEXT=	yes
PHP_MODNAME=	${PORTNAME}
DEFAULT_PHP_VER=53
IGNORE_WITH_PHP=5

post-patch:
	@${REINPLACE_CMD} -e 's|-ldl|-lintl|g' ${WRKSRC}/config.m4

.include <bsd.port.mk>
