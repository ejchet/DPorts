# Created by: Andrey Zakhvatov
# $FreeBSD: games/xmines/Makefile 319324 2013-05-28 19:38:34Z antoine $

PORTNAME=	xmines
PORTVERSION=	1.0
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	SUNSITE
MASTER_SITE_SUBDIR=	games/strategy
DISTNAME=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Minesweeper game for the X Window System

USE_XORG=	x11 xt
CFLAGS+=	-Wno-error=return-type

PORTDOCS=	README

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
