# New ports collection makefile for:    ratmenu
# Date created:         Fri Oct  5 12:53:10 CDT 2001
# Whom:                 mwm@mired.org
#
# $FreeBSD: ports/x11-wm/ratmenu/Makefile,v 1.7 2012/11/17 06:03:43 svnexp Exp $
#

PORTNAME=	ratmenu
PORTVERSION=	1.4
PORTREVISION=	2
CATEGORIES=	x11-wm
MASTER_SITES=	http://www.mired.org/downloads/

MAINTAINER=	mwm@mired.org
COMMENT=	A simple menu patterened for use with ratpoison

USE_XORG=	x11
ALL_TARGET=	ratmenu
MAN1=		ratmenu.1
PLIST_FILES=	bin/ratmenu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ratmenu ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ratmenu.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
