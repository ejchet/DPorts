# Created by: Emanuel Haupt <ehaupt@FreeBSD.org>
# $FreeBSD: games/bloboats/Makefile 323578 2013-07-24 08:19:07Z ehaupt $

PORTNAME=	bloboats
PORTVERSION=	1.0.2
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	http://mirror.kapsi.fi/bloboats.dy.fi/ \
		CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Boat racing game in the spirit of Elasto Mania or X-Moto

USES=		gmake
USE_SDL=	mixer image net sdl
USE_GL=		yes

MAKE_ENV+=	DATADIR="${DATADIR}"

.include <bsd.port.mk>
