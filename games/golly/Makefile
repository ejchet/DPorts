# $FreeBSD: games/golly/Makefile 314960 2013-03-22 20:06:14Z makc $

PORTNAME=	golly
PORTVERSION=	2.4
DISTVERSIONSUFFIX=	-src
PORTREVISION=	1
CATEGORIES=	games
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	makc@FreeBSD.org
COMMENT=	Conway's Game of Life and other cellular automata

USES=		cmake:outsource
USE_PERL5=	yes
USE_PYTHON=	2.7+
USE_WX=		2.8+
MAKE_JOBS_SAFE=	yes

DESKTOP_ENTRIES=	"Golly" "${COMMENT}" "${PREFIX}/share/pixmaps/golly.xpm" \
			"${PREFIX}/bin/golly" "Education;" "true"

.include <bsd.port.mk>
