# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD: games/gtktetcolor/Makefile 315433 2013-03-28 03:28:30Z eadler $

PORTNAME=	gtktetcolor
PORTVERSION=	0.6.4
PORTREVISION=	11
CATEGORIES=	games gnome
MASTER_SITES=	SUNSITE/games \
		http://canopus.iacp.dvo.ru/~panov/gtktetcolor/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Game for GNOME that resembles well-known Tetris and Columns

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

USES=        pathfix
USE_GNOME=	gnomeprefix intlhack libgnomeui
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

post-patch:
	@${REINPLACE_CMD} -e \
		's|games\.games|games:games|g' ${WRKSRC}/Makefile.in
	@${FIND} ${WRKSRC} -name Makefile.in | ${XARGS} ${REINPLACE_CMD} -e \
		's|-D.*_DISABLE_DEPRECATED||g'

.include <bsd.port.mk>
