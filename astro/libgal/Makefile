# ports collection makefile for:	linrad
# Date created:		7 July 2004
# Whom:			db
#
# $FreeBSD: ports/astro/libgal/Makefile,v 1.9 2012/11/17 05:54:25 svnexp Exp $
#

PORTNAME=	libgal
PORTVERSION=	0.5.0
CATEGORIES=	astro hamradio
MASTER_SITES=	http://homepage.mac.com/pclwillmott/GAL/ \
		${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	db

MAINTAINER=	db@FreeBSD.org
COMMENT=	General Astrodynamics Library

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${PREFIX} --sysconfdir=${PREFIX} --enable-shared=yes
USE_LDCONFIG=	yes

.include <bsd.port.pre.mk>

.if ${ARCH} == "powerpc"
BROKEN=		Does not compile on powerpc: invokes i386 asm
.elif ${ARCH} == "sparc64"
BROKEN=		Does not compile on sparc64: gcc coredump
.endif

.include <bsd.port.post.mk>
