# Created by: Andrey Zakhvatov
# $FreeBSD: games/xdigger/Makefile 321991 2013-06-28 21:48:59Z bapt $

PORTNAME=	xdigger
PORTVERSION=	1.0.10
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/arcade
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Boulderdash-like KC85 Digger for X Window System

USES=		imake
USE_XORG=	x11 xext
MAN6=		xdigger.6

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e "s|%%PREFIX%%|${PREFIX}|g" ${WRKSRC}/configure.h

post-install:
	@${CHMOD} 2755 ${PREFIX}/bin/xdigger
	@${CHOWN} root:games ${PREFIX}/bin/xdigger
	@${CHMOD} 664 ${PREFIX}/share/xdigger/xdigger.hiscore
	@${CHOWN} root:games ${PREFIX}/share/xdigger/xdigger.hiscore
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/ChangeLog ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
