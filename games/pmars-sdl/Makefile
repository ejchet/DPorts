# Created by: Alejandro Pulver <alejandro@varnet.biz>
# $FreeBSD: games/pmars-sdl/Makefile 323461 2013-07-22 15:20:13Z miwi $

PORTNAME=	pmars
PORTVERSION=	0.9.2
PORTREVISION=	5
CATEGORIES=	games
MASTER_SITES=	http://corewar.co.uk/pihlaja/pmars-sdl/
PKGNAMESUFFIX=	-sdl
DISTNAME=	${PORTNAME}-${PORTVERSION}-5

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Port of pMARS using the Simple Directmedia Library

LICENSE=	GPLv2 # (or later)

OPTIONS_DEFINE=	ICWS94 OPTIMIZED_CFLAGS PERMUTATE SMALLMEM
OPTIONS_DEFAULT=	ICWS94 OPTIMIZED_CFLAGS PERMUTATE
ICWS94_DESC=	Enable ICWS'94 support
PERMUTATE_DESC=	Enable the -P switch
SMALLMEM_DESC=	Use 16-bit addresses (smaller)

WRKSRC=		${WRKDIR}/${DISTNAME}/src

USE_SDL=	sdl
MAKE_ARGS=	CFLAGS+="${CFLAGS}" \
		CFLAGS+="-fno-builtin" \
		CFLAGS+="`${SDL_CONFIG} --cflags`" \
		LIB+="`${SDL_CONFIG} --libs`" \
		CFLAGS+="-DSDLGRAPHX"

PLIST_FILES=	bin/${PORTNAME}${PKGNAMESUFFIX}

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MICWS94}
MAKE_ARGS+=	CFLAGS+="-DEXT94"
.endif

.if ${PORT_OPTIONS:MOPTIMIZED_CFLAGS}
MAKE_ARGS+=	CFLAGS+="-O3 -fomit-frame-pointer"
.endif

.if ${PORT_OPTIONS:MPERMUTATE}
MAKE_ARGS+=	CFLAGS+="-DPERMUTATE"
.endif

.if ${PORT_OPTIONS:MSMALLMEM}
MAKE_ARGS+=	CFLAGS+="-DSMALLMEM"
.endif

post-patch:
	@${REINPLACE_CMD} -e \
		's|^CC|#CC| ; \
		 s|^CFLAGS|#CFLAGS| ; \
		 s|^LFLAGS|#LFLAGS| ; \
		 s|@$$(CC)|$$(CC)| ; \
		 /strip/d' ${WRKSRC}/${MAKEFILE}

do-install:
	(cd ${WRKSRC} && ${INSTALL_PROGRAM} ${PORTNAME} \
		${PREFIX}/bin/${PORTNAME}${PKGNAMESUFFIX})

.include <bsd.port.mk>
