# Created by: alepulver
# $FreeBSD: games/quake2-zaero/Makefile 319495 2013-05-31 14:40:56Z jgh $

PORTNAME=	zaero
PORTVERSION=	1.1
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.alepulver.com.ar/distfiles/
PKGNAMEPREFIX=	${Q2PKGNAMEPREFIX}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${PORTNAME}-src-${PORTVERSION}-2${EXTRACT_SUFX}
DIST_SUBDIR=	${PKGNAMEPREFIX}${PORTNAME}

MAINTAINER=	danfe@FreeBSD.org
COMMENT=	Quake II Zaero Mission Pack

USE_ZIP=	yes
USE_DOS2UNIX=	*.[ch]
NO_WRKSUBDIR=	yes

OPTIONS_DEFINE=	DEMO DM
DEMO_DESC=	Demo version of the game data
DM_DESC=	Deathmatch maps

DOCSDIR=	${PREFIX}/share/doc/${LATEST_LINK}

.include "${.CURDIR}/../quake2-data/Makefile.include"

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDEMO}
DISTFILES+=	zaerodemo${EXTRACT_SUFX}
PLIST_SUB+=	DEMO=""
.else
PLIST_SUB+=	DEMO="@comment "
SUB_FILES+=	pkg-message
.endif

.if ${PORT_OPTIONS:MDM}
DISTFILES+=	zaerodm${EXTRACT_SUFX}
PLIST_SUB+=	DM=""
.else
PLIST_SUB+=	DM="@comment "
.endif

post-extract:
	@${CP} ${FILESDIR}/${MAKEFILE} ${WRKSRC}

post-patch:
	@${REINPLACE_CMD} -e 's/__linux__/__unix__/' ${WRKSRC}/q_shared.[ch]

do-install:
	${MKDIR} ${Q2DIR}/${PORTNAME}
	${INSTALL_PROGRAM} ${WRKSRC}/game.so ${Q2DIR}/${PORTNAME}
.if ${PORT_OPTIONS:MDEMO}
	${INSTALL_DATA} ${WRKSRC}/zaero/pak0.pak ${Q2DIR}/${PORTNAME}
	${MKDIR} ${Q2DIR}/${PORTNAME}/sprites
	${INSTALL_DATA} ${WRKSRC}/zaero/sprites/* ${Q2DIR}/${PORTNAME}/sprites
.endif
	${INSTALL_DATA} ${WRKSRC}/pak1.pak ${Q2DIR}/${PORTNAME}
.if ${PORT_OPTIONS:MDM}
	${INSTALL_DATA} ${WRKSRC}/zaero/pak2.pak ${Q2DIR}/${PORTNAME}
.endif
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/changelog.txt ${DOCSDIR}
.endif

.if ! ${PORT_OPTIONS:MDEMO}
post-install:
	@${ECHO_CMD}
	@${CAT} ${PKGMESSAGE}
	@${ECHO_CMD}
.endif

.include <bsd.port.mk>
