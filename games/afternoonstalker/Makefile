# Created by: Mark Pulford <mark@kyne.com.au>
# $FreeBSD: games/afternoonstalker/Makefile 315963 2013-04-17 13:02:44Z martymac $

PORTNAME=	afternoonstalker
PORTVERSION=	1.1.5
CATEGORIES=	games
MASTER_SITES=	http://perso.b2b2c.ca/sarrazip/dev/ \
		LOCAL/martymac

MAINTAINER=	martymac@FreeBSD.org
COMMENT=	A clone of the 1981 Night Stalker video game

LICENSE=	GPLv2

LIB_DEPENDS=	flatzebra:${PORTSDIR}/devel/flatzebra

USE_SDL=	mixer sdl
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN6=		afternoonstalker.6
PORTDOCS=	AUTHORS COPYING INSTALL NEWS README THANKS TODO

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e 's|^pkgsounddir =.*|pkgsounddir = ${DATADIR}/sounds|' \
		${WRKSRC}/src/Makefile.in
	@${REINPLACE_CMD} -e 's|docdir = .*|docdir = ${DOCSDIR}|' \
		${WRKSRC}/Makefile.in
.if empty(PORT_OPTIONS:MDOCS)
	@${REINPLACE_CMD} -e '/^install-data-am/s|install-docDATA||' \
		${WRKSRC}/Makefile.in
.endif

.include <bsd.port.mk>
