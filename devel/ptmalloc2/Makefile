# Ports Collection Makefile for:	ptmalloc
# Date created:				10 December 2004
# Who:					Greg 'groggy' Lehey <grog@FreeBSD.org>
# Whom: is grammatically incorrect in this context.
#
# $FreeBSD: ports/devel/ptmalloc2/Makefile,v 1.12 2013/02/14 10:22:20 svnexp Exp $

PORTNAME=	ptmalloc2
PORTVERSION=	20060605
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://www.malloc.de/malloc/
DISTNAME=	${PORTNAME}-current

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Alternative threads-aware malloc

USE_LDCONFIG=	yes
WRKSRC=	${WRKDIR}/${PORTNAME}
USE_GMAKE=	yes
ALL_TARGET=	posix

INCDIR=	include/${PORTNAME}
PLIST_SUB=	INCDIR=${INCDIR}

do-install:	all
	${MKDIR} ${PREFIX}/${INCDIR}
	${INSTALL_DATA} ${WRKSRC}/malloc.h ${PREFIX}/${INCDIR}/
	${INSTALL_DATA} ${WRKSRC}/libmalloc.a ${PREFIX}/lib/libptmalloc2.a
	${INSTALL_DATA} ${WRKSRC}/malloc.so ${PREFIX}/lib/libptmalloc2.so.0
	${LN} -s ${PREFIX}/lib/libptmalloc.so.0 ${PREFIX}/lib/libptmalloc2.so

regression-test: build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} check

.include <bsd.port.mk>
