# New ports collection makefile for:	mingw32-openssl
# Date created:		5 December 2011
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/devel/mingw32-openssl/Makefile,v 1.5 2013/02/25 16:00:38 svnexp Exp $
#

PORTNAME=	openssl
PORTVERSION=	1.0.0k
CATEGORIES=	devel security
MASTER_SITES=	http://www.openssl.org/%SUBDIR%/ \
		ftp://ftp.openssl.org/%SUBDIR%/ \
		ftp://ftp.cert.dfn.de/pub/tools/net/openssl/%SUBDIR%/
MASTER_SITE_SUBDIR=	source
PKGNAMEPREFIX=	mingw32-
DIST_SUBDIR=	${DISTNAME}2

MAINTAINER=	knu@FreeBSD.org
COMMENT=	The OpenSSL library cross-compiled for MinGW32

BUILD_DEPENDS=	makedepend:${PORTSDIR}/devel/makedepend \
		${PKGNAMEPREFIX}gcc:${PORTSDIR}/devel/${PKGNAMEPREFIX}gcc \
		${LOCALBASE}/mingw32/include/stdlib.h:${PORTSDIR}/devel/${PKGNAMEPREFIX}bin-msvcrt \
		${LOCALBASE}/mingw32/lib/libz.a:${PORTSDIR}/devel/mingw32-zlib

USE_PERL5_BUILD=	yes
MAKE_JOBS_UNSAFE=	yes
CONFIGURE_PREFIX=	${PREFIX}/mingw32
OPENSSLDIR=		${CONFIGURE_PREFIX}/openssl
INSTALL_TARGET=		install_sw

post-patch:
	@${REINPLACE_CMD} -e 's|m4 -B 8192|m4|g' \
		${WRKSRC}/crypto/des/Makefile

do-configure:
	cd ${WRKSRC} && ${SETENV} PERL="${PERL}" CROSS_COMPILE="${PKGNAMEPREFIX}" \
	./Configure mingw --prefix="${CONFIGURE_PREFIX}" --openssldir="${OPENSSLDIR}"

.include <bsd.port.mk>
