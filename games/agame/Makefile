# Created by: Dmitry Marakasov <amdmi3@amdmi3.ru>
# $FreeBSD: games/agame/Makefile 318822 2013-05-23 02:04:46Z amdmi3 $

PORTNAME=	agame
PORTVERSION=	1577
PORTREVISION=	11
CATEGORIES=	games
MASTER_SITES=	http://zevv.nl/play/code/game/ \
		http://critical.ch/distfiles/ \
		http://energy.critical.ch/distfiles/
DISTNAME=	game-src-${PORTVERSION}
EXTRACT_SUFX=	.tgz

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Simple Tetris-like game

LICENSE=	GPLv2

USE_SDL=	sdl image mixer
USE_GMAKE=	yes
MAKE_JOBS_SAFE=	yes

WRKSRC=		${WRKDIR}/game

PORTDOCS=	README.TXT

DESKTOP_ENTRIES="game" \
		"A simple tetris-like game" \
		"${DATADIR}/img/icon.png" \
		"game" \
		"Game;BlocksGame;" \
		false

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -Ee 's,wav/|mp3/|img/,${DATADIR}/&,g' ${WRKSRC}/main.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/game ${PREFIX}/bin
.for dir in wav mp3 img
	${MKDIR} ${DATADIR}/${dir}
	${INSTALL_DATA} ${WRKSRC}/${dir}/* ${DATADIR}/${dir}/
.endfor

.if ${PORT_OPTIONS:MDOCS}
post-install:
	${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
