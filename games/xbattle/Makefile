# Created by: Pedro Giffuni
# $FreeBSD: games/xbattle/Makefile 321991 2013-06-28 21:48:59Z bapt $

PORTNAME=	xbattle
PORTVERSION=	5.4.1
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GENTOO}
MASTER_SITE_SUBDIR=	distfiles

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Concurrent multi-player battle strategy game

USES=		imake
USE_XORG=	x11 xext
MAN1=		xbattle.1

CFLAGS+=	-Wno-return-type

.include <bsd.port.options.mk>

post-install:
	$(MKDIR) $(PREFIX)/share/xbattle
	$(CP) -R $(WRKSRC)/xbos $(PREFIX)/share/xbattle/
	$(CP) -R $(WRKSRC)/xbts $(PREFIX)/share/xbattle/
	$(CP) -R $(WRKSRC)/xbas $(PREFIX)/share/xbattle/
	@${CHMOD} 755 ${PREFIX}/share/xbattle
	@${CHMOD} 755 ${PREFIX}/share/xbattle/xbas
	@${CHMOD} 644 ${PREFIX}/share/xbattle/xbas/*
	@${CHMOD} 755 ${PREFIX}/share/xbattle/xbos
	@${CHMOD} 644 ${PREFIX}/share/xbattle/xbos/*
	@${CHMOD} 755 ${PREFIX}/share/xbattle/xbts
	@${CHMOD} 644 ${PREFIX}/share/xbattle/xbts/*
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/tutorial* ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
