# $FreeBSD: devel/pecl-newt/Makefile 320356 2013-06-09 17:30:33Z miwi $

PORTNAME=	newt
PORTVERSION=	1.2.6
CATEGORIES=	devel www
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
EXTRACT_SUFX=	.tgz

MAINTAINER=	garga@FreeBSD.org
COMMENT=	PHP language extension for RedHat Newt library

LICENSE=	PHP301

LIB_DEPENDS=	newt:${PORTSDIR}/devel/newt

USE_PHP=	yes
USE_PHPIZE=	yes
USE_PHP_BUILD=	yes
USE_PHPEXT=	yes
PHP_MODNAME=	newt

post-patch:
	@${REINPLACE_CMD} -e '/SEARCH_PATH/ s,=",="${LOCALBASE} ${PREFIX} ,' \
		${WRKSRC}/config.m4

.include <bsd.port.mk>
