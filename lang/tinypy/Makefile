# Created by: Marcin Cieslak <saper@SYSTEM.PL>
# $FreeBSD: lang/tinypy/Makefile 319870 2013-06-04 15:13:42Z bapt $

PORTNAME=	tinypy
PORTVERSION=	1.1
CATEGORIES=	lang python
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	saper@saper.info
COMMENT=	A minimalist implementation of python in 64k of code

USE_PYTHON_BUILD=	yes
USE_PYDISTUTILS=	yes

PYDISTUTILS_BUILD_TARGET=	linux
PYDISTUTILS_NOEGGINFO=		yes

PLIST_FILES=	bin/tinypy
PORTEXAMPLES=	*

OPTIONS_DEFINE=	PYGAME
PYGAME_DESC=	PyGame support (requires SDL)

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MPYGAME}
PYDISTUTILS_BUILD_TARGET+=	pygame
USE_SDL=	sdl
.endif

.include <bsd.port.pre.mk>

post-patch:
	@${REINPLACE_CMD} -e 's|-O.||; s|gcc $$WFLAGS|${CC} ${CFLAGS} -std=c89 -Wall|' \
		${WRKSRC}/setup.py

do-configure:
	@${DO_NADA}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/build/tinypy ${PREFIX}/bin
.if ${PORT_OPTIONS:MEXAMPLES} && ${PORT_OPTIONS:MPYGAME}
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/julia.py ${EXAMPLESDIR}
.endif

.include <bsd.port.post.mk>
