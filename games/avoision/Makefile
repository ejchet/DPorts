# Created by: nemysis <nemysis@gmx.ch>
# $FreeBSD: games/avoision/Makefile 322858 2013-07-12 17:34:04Z deischen $

PORTNAME=	avoision
PORTVERSION=	1.1
PORTREVISION=	3
CATEGORIES=	games
MASTER_SITES=	SF/avsn/

MAINTAINER=	nemysis@gmx.ch
COMMENT=	Simple collect-dots-avoid-blocks game

LICENSE=	GPLv2 CCbyNCSA3
LICENSE_COMB=	dual
LICENSE_NAME_CCbyNCSA3=Attribution-NonCommercial-ShareAlike 3.0 Unported
LICENSE_FILE=	${WRKSRC}/License.txt
LICENSE_FILE_CCbyNCSA3=${WRKSRC}/License.txt
LICENSE_PERMS_CCbyNCSA3=dist-mirror pkg-mirror auto-accept

BUILD_DEPENDS=	${LOCALBASE}/lib/libradius-engine.a:${PORTSDIR}/graphics/radius-engine
LIB_DEPENDS=	lua-5.1:${PORTSDIR}/lang/lua \
		png15:${PORTSDIR}/graphics/png \
		physfs.1:${PORTSDIR}/devel/physfs
RUN_DEPENDS=	zip:${PORTSDIR}/archivers/zip

USE_SDL=	sdl sound
USE_GL=		glu
GNU_CONFIGURE=	yes
ALL_TARGET=	${PORTNAME}
MAKE_JOBS_SAFE=	yes

PLIST_FILES=	bin/${PORTNAME} \
		share/applications/${PORTNAME}.desktop \
		share/pixmaps/${PORTNAME}.png \
		%%DATADIR%%/${PORTNAME}.zip
PLIST_DIRS=	%%DATADIR%%
PLIST_DIRSTRY=	share/applications

PORTDOCS=	ChangeLog

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
.endif

.include <bsd.port.mk>
