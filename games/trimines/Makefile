# Created by: Dmitry Marakasov <amdmi3@amdmi3.ru>
# $FreeBSD: games/trimines/Makefile 321132 2013-06-17 15:27:58Z amdmi3 $

PORTNAME=	trimines
PORTVERSION=	1.3.0
PORTREVISION=	5
CATEGORIES=	games
MASTER_SITES=	http://www.freewebs.com/trimines/ \
		http://mirror.amdmi3.ru/distfiles/

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Mine sweeper game that uses triangles instead of squares

USE_SDL=	sdl

post-patch:
	@${REINPLACE_CMD} -e 's|data/|${DATADIR}/|' ${WRKSRC}/src/gfx.c

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} src/main.c -o ./trimines \
		`${SDL_CONFIG} --cflags --libs`

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trimines ${PREFIX}/bin
.for dir in counter menu misc triangles
	${MKDIR} ${DATADIR}/${dir}
	${INSTALL_DATA} ${WRKSRC}/data/${dir}/* ${DATADIR}/${dir}
.endfor

.include <bsd.port.mk>
