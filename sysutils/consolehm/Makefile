# New ports collection makefile for:   consolehm
# Date created:        27 September 1999
# Whom:                Mike Muir <mmuir@es.co.nz>
#
# $FreeBSD: ports/sysutils/consolehm/Makefile,v 1.17 2012/11/17 06:01:27 svnexp Exp $
#

PORTNAME=	consolehm
PORTVERSION=	1.31
PORTREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	fenner

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Console based hardware monitor for FreeBSD

WRKSRC=		${WRKDIR}/consolehm/consolehm

GNU_CONFIGURE=	yes
MAN8=		chm.8
MANCOMPRESSED=	yes
PLIST_FILES=	bin/chm

.include <bsd.port.pre.mk>

.if ${ARCH} == "ia64" || ${ARCH} == "powerpc" || ${ARCH} == "sparc64"
BROKEN=		Does not compile on ia64, powerpc, or sparc64
.endif

.include <bsd.port.post.mk>
