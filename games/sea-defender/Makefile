# Created by: Dmitry Marakasov <amdmi3@FreeBSD.org>
# $FreeBSD: games/sea-defender/Makefile 318818 2013-05-23 02:02:57Z amdmi3 $

PORTNAME=	sea-defender
PORTVERSION=	r20100723
PORTREVISION=	3
CATEGORIES=	games
MASTER_SITES=	http://mirror.amdmi3.ru/distfiles/

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	Simple missile command clone

BUILD_DEPENDS=	${LOCALBASE}/lib/libglfw.a:${PORTSDIR}/graphics/glfw

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_SDL=	sdl mixer image ttf
USE_GL=		gl glu
USE_XORG=	x11 xrandr
MAKE_JOBS_SAFE=	yes

SUB_FILES=	${PORTNAME}.sh
PLIST_FILES=	libexec/${PORTNAME} bin/${PORTNAME}

WRKSRC=		${WRKDIR}/${PORTNAME}

PORTDOCS=	README

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sea ${PREFIX}/libexec/${PORTNAME}
	${INSTALL_SCRIPT} ${WRKDIR}/${PORTNAME}.sh ${PREFIX}/bin/${PORTNAME}
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
