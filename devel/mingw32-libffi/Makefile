# New ports collection makefile for:	mingw32-libffi
# Date created:		5 December 2011
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/devel/mingw32-libffi/Makefile,v 1.5 2013/02/25 15:57:08 svnexp Exp $
#

PORTNAME=	libffi
PORTVERSION=	3.0.12
CATEGORIES=	devel
MASTER_SITES=	ftp://sourceware.org/pub/libffi/
PKGNAMEPREFIX=	mingw32-

MAINTAINER=	knu@FreeBSD.org
COMMENT=	The libffi library cross-compiled for MinGW32

BUILD_DEPENDS=	${PKGNAMEPREFIX}gcc:${PORTSDIR}/devel/${PKGNAMEPREFIX}gcc \
		${LOCALBASE}/mingw32/include/stdlib.h:${PORTSDIR}/devel/${PKGNAMEPREFIX}bin-msvcrt

GNU_CONFIGURE=	yes
GNU_CONFIGURE_PREFIX=	${PREFIX}/mingw32
CONFIGURE_ARGS=	--host="mingw32" --enable-shared
CC=		${PKGNAMEPREFIX}gcc
CFLAGS=		-O2	# Override CFLAGS for a cross-build
PLIST_SUB=	PORTVERSION=${PORTVERSION}

post-patch:
	${REINPLACE_CMD} -e 's,^INFO_DEPS[ \t]*=,#&,' \
	                 -e '/^SUBDIRS[ \t]*=/s, man$$,,' \
	                 ${WRKSRC}/Makefile.in

post-install:
	${INSTALL_DATA} \
		${PREFIX}/mingw32/lib/libffi-${PORTVERSION}/include/*.h \
		${PREFIX}/mingw32/include/

.include <bsd.port.mk>
