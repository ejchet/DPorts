# Created by: Alejandro Pulver <alejandro@varnet.biz>
# $FreeBSD: x11-fm/tdfsb/Makefile 316355 2013-04-23 14:20:25Z bapt $

PORTNAME=	tdfsb
PORTVERSION=	0.0.10
PORTREVISION=	3
CATEGORIES=	x11-fm
MASTER_SITES=	http://www.determinate.net/webdata/data/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A 3D filesystem browser

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

LIB_DEPENDS=	smpeg.1:${PORTSDIR}/multimedia/smpeg

USE_GL=		glut
USE_SDL=	image sdl
USES=		pkgconfig

PORTDOCS=	README
PLIST_FILES=	bin/${PORTNAME}

CPPFLAGS+=	`${LOCALBASE}/bin/pkgconf --cflags SDL_image gl` \
		`${LOCALBASE}/bin/smpeg-config --cflags` \
		-I ${LOCALBASE}/include
LDFLAGS+=	`${LOCALBASE}/bin/pkgconf --libs SDL_image gl` \
		`${LOCALBASE}/bin/smpeg-config --libs` \
		-L ${LOCALBASE}/lib -lGLU -lglut

.include <bsd.port.pre.mk>

do-build:
	(cd ${BUILD_WRKSRC} && ${CC} ${CPPFLAGS} ${CFLAGS} ${PORTNAME}.c \
		-o ${PORTNAME} ${LDFLAGS})

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.post.mk>
