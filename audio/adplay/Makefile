# Created by: Emanuel Haupt <ehaupt@critical.ch>
# $FreeBSD: audio/adplay/Makefile 323578 2013-07-24 08:19:07Z ehaupt $

PORTNAME=	adplay
PORTVERSION=	1.7
PORTREVISION=	4
CATEGORIES=	audio
MASTER_SITES=	SF/adplug/AdPlay_UNIX/${PORTVERSION}:main \
		SF/adplug/Database/2006-07-06:db
DISTFILES=	${PORTNAME}-${DISTVERSIONPREFIX}${DISTVERSION}${EXTRACT_SUFX}:main \
		adplugdb-${DBVERSION}${EXTRACT_SUFX}:db

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	AdLib player using adplug library

LICENSE=	GPLv2

LIB_DEPENDS=	adplug:${PORTSDIR}/audio/libadplug

GNU_CONFIGURE=	yes
WANT_SDL=	yes

DBFILE=		adplug.db
DBVERSION=	2006-07-07

CPPFLAGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/libbinio
LDFLAGS+=	-L${LOCALBASE}/lib

CONFIGURE_ARGS+=	--sharedstatedir=${DATADIR}

MAN1=		adplay.1
PLIST_FILES=	bin/adplay %%DATADIR%%/adplug.db
PLIST_DIRS=	%%DATADIR%%

OPTIONS_DEFINE=	SDL

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MSDL}
USE_SDL=	sdl mixer
.else
CONFIGURE_ARGS+=	--disable-output-sdl
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|^\(adplug_data_dir.*\)/.*|\1|' \
		${WRKSRC}/src/Makefile.in
	@${RM} ${WRKSRC}/src/getopt.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/adplay ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/adplay.1 ${MANPREFIX}/man/man1
	${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKDIR}/${DBVERSION}/${DBFILE} ${DATADIR}

.include <bsd.port.mk>
