# New ports collection makefile for:	xnodecor
# Date created:		15 November 2002
# Whom:			Katsura Matsumoto <katsura@cc.okayama-u.ac.jp>
#
# $FreeBSD: ports/x11/xnodecor/Makefile,v 1.6 2012/11/17 06:03:22 svnexp Exp $
#

PORTNAME=	xnodecor
PORTVERSION=	0.1
PORTREVISION=	2
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.42.org/pub/wmx/contrib/
DISTFILES=	xnodecor.c

MAINTAINER=	katsura@cc.osaka-kyoiku.ac.jp
COMMENT=	Utility to set override_redirect in XWindowAttributes to True

NO_WRKSUBDIR=	yes
USE_XORG=	x11
PLIST_FILES=	bin/xnodecor

do-extract:
	@${MKDIR} ${WRKDIR}
	@${CP} ${FILESDIR}/Makefile ${WRKDIR}
	@${CP} ${DISTDIR}/${DISTFILES} ${WRKDIR}

.include <bsd.port.mk>
