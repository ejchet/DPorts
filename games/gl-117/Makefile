# Created by: ijliao
# $FreeBSD: games/gl-117/Makefile 320511 2013-06-11 00:13:12Z miwi $

PORTNAME=	gl-117
PORTVERSION=	1.3.2
DISTVERSIONSUFFIX=	-src
PORTREVISION=	8
CATEGORIES=	games
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/GL-117%20Source

MAINTAINER=	erik@bz.bzflag.bz
COMMENT=	An OpenGL & SDL action flight simulator

USE_GL=		glut
USE_BZIP2=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-opengl-dir=${LOCALBASE}
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}

DESKTOP_ENTRIES=	"GL-117" \
			"Action flight simulator" \
			"" \
			"gl-117" \
			"Game;ArcadeGame;" \
			false

MAN6=		gl-117.6

.include <bsd.port.options.mk>

post-install:
	${INSTALL_MAN}	${WRKSRC}/doc/gl-117.6 ${MANPREFIX}/man/man6
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/gl-117.pdf ${DOCSDIR}
.endif

.include <bsd.port.mk>
