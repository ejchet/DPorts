# Created by: Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
# $FreeBSD: multimedia/libdv/Makefile 320129 2013-06-06 21:56:18Z bapt $

PORTNAME=	libdv
PORTVERSION=	1.0.0
PORTREVISION=	3
CATEGORIES=	multimedia
MASTER_SITES=	SF

MAINTAINER=	bapt@FreeBSD.org
COMMENT=	Quasar DV codec (libdv): software codec for DV video encoding format

LICENSE=	LGPL21

LIB_DEPENDS=	jpeg.11:${PORTSDIR}/graphics/jpeg \
		popt.0:${PORTSDIR}/devel/popt

USES=	pkgconfig pathfix
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--disable-gtk
CONFIGURE_ENV=	PKG_CONFIG_PATH=${PKG_CONFIG_PATH}:${LOCALBASE}/libdata/pkgconfig
CPPFLAGS+=	-I${LOCALBASE}/include ${PTHREAD_CFLAGS}
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}
USE_LDCONFIG=	yes

MAN1=	dubdv.1 dvconnect.1 encodedv.1

PORTDOCS=	AUTHORS COPYING COPYRIGHT ChangeLog NEWS README \
		README.dvconnect README.encoder TODO

OPTIONS_DEFINE=	SDL DOCS

.include <bsd.port.options.mk>

# XXX - work around compiler bug
# Optimizations -O{1,s,2,3} work
# However, lack of -O{1,s,2,3} or -O0 BREAK the build
# Therefore, make sure we have AT LEAST -O and avoid -O0
CFLAGS:=	-O ${CFLAGS:N-O0}

.if ${PORT_OPTIONS:MSDL}
USE_SDL=	sdl
CONFIGURE_ARGS+=	--enable-sdl
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|stdint.h|sys/types.h|' \
		${WRKSRC}/libdv/dv.h \
		${WRKSRC}/libdv/dv_types.h \
		${WRKSRC}/libdv/headers.c \
		${WRKSRC}/libdv/encode.c
	@${REINPLACE_CMD} -E -e 's|^void swab.+$$||' ${WRKSRC}/libdv/encode.c
	@${REINPLACE_CMD} -e 's|SDL/||' ${WRKSRC}/playdv/display.h
	@${REINPLACE_CMD} -e 's|malloc.h|stdlib.h|' ${WRKSRC}/encodedv/dvavi.c \
		${WRKSRC}/encodedv/dvconnect.c
# XXX - revise at every port update
# protect popt from prefix changes
	@${REINPLACE_CMD} -E -e 's|(@REQUIRES_NOPKGCONFIG@)|-L${LOCALBASE}/include \1|' \
		${WRKSRC}/libdv.pc.in

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for doc in ${PORTDOCS}
	@${INSTALL_DATA} ${WRKSRC}/${doc} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
