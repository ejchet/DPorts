# New ports collection makefile for:	cxxtools
# Date created:		Wed Apr 14 18:11:42 CEST 2010
# Whom:			Juergen Lock <nox@freebsd.org>
#
# $FreeBSD: devel/cxxtools/Makefile 316654 2013-04-27 08:50:46Z mva $
#

PORTNAME=	cxxtools
PORTVERSION=	2.1.1
CATEGORIES=	devel
MASTER_SITES=	http://www.tntnet.org/download/

MAINTAINER=	nox@FreeBSD.org
COMMENT=	Collection of general-purpose C++ classes

PATCH_STRIP=	-p1
USES=		iconv
USE_CSTD=	gnu89
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
MAKE_JOBS_SAFE=	yes

.include <bsd.port.pre.mk>

.if ${ARCH} == "sparc64"
BROKEN=		Does not configure on sparc64
.endif
.if ${ARCH} == "x86_64"
PLIST_SUB+=	X86_64_ONLY=""
.else
PLIST_SUB+=	X86_64_ONLY="@comment "
.endif
.if ${ARCH} == "i386"
PLIST_SUB+=	I386_ONLY=""
.else
PLIST_SUB+=	I386_ONLY="@comment "
.endif
.if (${ARCH} == "x86_64") || (${ARCH} == "i386")
PLIST_SUB+=	X86_ONLY=""
.else
PLIST_SUB+=	X86_ONLY="@comment "
.endif

.include <bsd.port.post.mk>
