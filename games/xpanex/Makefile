# Created by: Andrey Zakhvatov
# $FreeBSD: games/xpanex/Makefile 321991 2013-06-28 21:48:59Z bapt $

PORTNAME=	xpanex
PORTVERSION=	5.5.2
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games/xpuzzles

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Panex puzzle for X Window System

WRKSRC=		${WRKDIR}/${PORTNAME}
USES=		imake
USE_XORG=	x11 xext xt sm ice
MAN1=		xpanex.1
MANCOMPRESSED=	no
XFREE86_HTML_MAN=	no

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xpanex ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/Panex.ad ${PREFIX}/lib/X11/app-defaults/Panex
	${INSTALL_MAN} ${WRKSRC}/xpanex.man ${MANPREFIX}/man/man1/xpanex.1

.include <bsd.port.mk>
