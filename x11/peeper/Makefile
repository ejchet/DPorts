# Created by: ijliao
# $FreeBSD: x11/peeper/Makefile 315242 2013-03-25 19:14:43Z eadler $

PORTNAME=	peeper
PORTVERSION=	0.1
PORTREVISION=	9
CATEGORIES=	x11
MASTER_SITES=	http://peeper.sourceforge.net/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	View an area of the screen at a certain magnification

USE_GNOME=	imlib
USE_GMAKE=	yes
MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS} `${IMLIB_CONFIG} --cflags-gdk`" \
		LIBS="`${IMLIB_CONFIG} --libs-gdk`"
ALL_TARGET=	peeper

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/peeper ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
