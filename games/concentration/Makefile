# Created by: Dmitry Marakasov <amdmi3@amdmi3.ru>
# $FreeBSD: games/concentration/Makefile 321066 2013-06-16 19:01:33Z amdmi3 $

PORTNAME=	concentration
PORTVERSION=	1.2
PORTREVISION=	10
CATEGORIES=	games
MASTER_SITES=	http://www.shiftygames.com/concentration/ \
		http://mirror.amdmi3.ru/distfiles/

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Find all matching pairs of icons as fast as possible

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_SDL=	sdl mixer image ttf

CPPFLAGS+=	`${SDL_CONFIG} --cflags`
LDFLAGS+=	`${SDL_CONFIG} --libs`

MAN6=		concentration.6

.include <bsd.port.mk>
