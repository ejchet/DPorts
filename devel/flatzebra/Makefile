# Created by: Edwin Groothuis <edwin2mavetju.org>
# $FreeBSD: devel/flatzebra/Makefile 320189 2013-06-07 10:00:26Z martymac $

PORTNAME=	flatzebra
PORTVERSION=	0.1.6
PORTREVISION=	1
CATEGORIES=	devel games
MASTER_SITES=	http://perso.b2b2c.ca/sarrazip/dev/

MAINTAINER=	edwin@mavetju.org
COMMENT=	A generic game engine for 2D double-buffering animation

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--includedir=${PREFIX}/include

USES=		pkgconfig
USE_AUTOTOOLS=	libtool
USE_SDL=	sdl mixer image

USE_LDCONFIG=	yes

DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}-${PORTVERSION}
PORTDOCS=	AUTHORS COPYING INSTALL NEWS README TODO THANKS

.include <bsd.port.options.mk>

post-patch:
.if empty(PORT_OPTIONS:MDOCS)
	@${REINPLACE_CMD} 's|^install-data-am: .*|install-data-am: install-pkgconfigDATA|' ${WRKSRC}/Makefile.in
.endif

.include <bsd.port.mk>
