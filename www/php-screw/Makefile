# New ports collection makefile for:	php-screw
# Date created:         Wed May 22 12:21:01 CET 2002
# Whom:                 Alex Dupre <sysadmin@alexdupre.com>
#
# $FreeBSD: ports/www/php-screw/Makefile,v 1.18 2012/11/17 06:02:57 svnexp Exp $
#

PORTNAME=	php-screw
PORTVERSION=	1.5
CATEGORIES=	www security
MASTER_SITES=	SF/${PORTNAME}/OldFiles
DISTNAME=	php_screw-${PORTVERSION}
EXTRACT_SUFX=	.tgz

MAINTAINER=	ale@FreeBSD.org
COMMENT=	A PHP script encryption tool

PKGMESSAGE=	${WRKDIR}/pkg-message

CRYPTKEY?=	11152, 368, 192, 1281, 62

USE_AUTOTOOLS=	libtool
USE_PHP=	zlib
USE_PHPIZE=	yes
IGNORE_WITH_PHP=4

CONFIGURE_ARGS+=--enable-php_screw=shared

pre-everything::
	@${ECHO} ""
	@${ECHO} "To achieve real security, define your own encryption"
	@${ECHO} "seed key (CRYPTKEY); longer is better."
	@${ECHO} ""
	@${ECHO} "make CRYPTKEY=\"234, 84, 39664, 771, 9853\""
	@${ECHO} ""

post-patch:
	@${ECHO} "short pm9screw_mycryptkey[] = { ${CRYPTKEY} };" > \
		${WRKSRC}/my_screw.h

do-build:
	@(cd ${BUILD_WRKSRC}; ${SETENV} ${MAKE_ENV} ${MAKE} \
		${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} ${ALL_TARGET})
	@(cd ${BUILD_WRKSRC}/tools; ${SETENV} ${MAKE_ENV} ${MAKE} \
		${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} ${ALL_TARGET})

post-build:
	@${SED} "s|%%LOCALBASE%%|${LOCALBASE}|g;s|%%PREFIX%%|${PREFIX}|g;s|%%PHP_EXT_DIR%%|${PHP_EXT_DIR}|g" \
		${.CURDIR}/pkg-message > ${PKGMESSAGE}
do-install:
	@${MKDIR} ${PREFIX}/lib/php/${PHP_EXT_DIR}
	@${INSTALL_DATA} ${WRKSRC}/modules/php_screw.so \
		${PREFIX}/lib/php/${PHP_EXT_DIR}
	@${INSTALL_PROGRAM} ${WRKSRC}/tools/screw ${PREFIX}/bin

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
