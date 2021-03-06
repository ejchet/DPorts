# Created by: Alexander Logvinov <avl@FreeBSD.org>
# $FreeBSD: net/freerdp/Makefile 321660 2013-06-24 02:43:38Z fluffy $

PORTNAME=	freerdp
PORTVERSION=	1.0.2
CATEGORIES=	net comms ipv6

MAINTAINER=	fluffy@FreeBSD.org
COMMENT=	A free implementation of Remote Desktop Protocol

LICENSE=	AL2
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_OPENSSL=	yes
USE_LDCONFIG=	yes
USES=		cmake pkgconfig
USE_GITHUB=	yes
GH_ACCOUNT=	FreeRDP
GH_PROJECT=	FreeRDP
GH_COMMIT=	616aed4
GH_TAGNAME=	${GH_COMMIT}

LDFLAGS+=	-L${LOCALBASE}/lib
CFLAGS+=	-I${WRKSRC}/include -I${LOCALBASE}/include

OPTIONS_DEFINE=	ALSA CUPS DIRECTFB FFMPEG PULSEAUDIO SSE X11
OPTIONS_DEFAULT=	CUPS PULSEAUDIO X11
X11_DESC=	Build FreeRDP X11 client
DIRECTFB_DESC=	Build FreeRDP DirectFB client

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MX11}
USE_XORG=	x11 xkbfile xcursor xextproto xv xinerama xext xcursor
CMAKE_ARGS+=	-DWITH_X11=ON
BUILD_DEPENDS+=	xmlto:${PORTSDIR}/textproc/xmlto
MAN1=		xfreerdp.1
PLIST_SUB+=	X11=""
.else
CMAKE_ARGS+=	-DWITH_X11=OFF -DWITH_XKBFILE=OFF
PLIST_SUB+=	X11="@comment "
.endif

.if ${PORT_OPTIONS:MDIRECTFB}
LIB_DEPENDS+=	directfb:${PORTSDIR}/devel/directfb
CMAKE_ARGS+=	-DWITH_DIRECTFB=ON
PLIST_SUB+=	DIRECTFB=""
# currently DirectFB option fails with clang
USE_GCC=	yes
.else
PLIST_SUB+=	DIRECTFB="@comment "
.endif

.if ${PORT_OPTIONS:MALSA}
PLIST_SUB+=	ALSA=""
.else
PLIST_SUB+=	ALSA="@comment "
CMAKE_ARGS+=	-DWITH_ALSA=OFF
.endif

.if ${PORT_OPTIONS:MFFMPEG}
# the newer ffmpeg is prefered
LIB_DEPENDS+=	avcodec-devel:${PORTSDIR}/multimedia/ffmpeg-devel \
		avutil-devel:${PORTSDIR}/multimedia/ffmpeg-devel
AVCODEC_INCLUDE_DIR=	${LOCALBASE}/include/ffmpeg-devel
AVCODEC_LIBRARY=	${LOCALBASE}/lib/ffmpeg-devel
AVUTIL_INCLUDE_DIR=	${AVCODEC_INCLUDE_DIR}
AVUTIL_LIBRARY=		${AVCODEC_LIBRARY}
CFLAGS+=	-I${AVCODEC_INCLUDE_DIR}
LDFLAGS+=	-I${AVCODEC_LIBRARY}
PLIST_SUB+=	FFMPEG=""
.else
CMAKE_ARGS+=	-DWITH_FFMPEG=OFF
PLIST_SUB+=	FFMPEG="@comment "
.endif

.if ${PORT_OPTIONS:MCUPS}
CMAKE_ARGS+=	-DWITH_CUPS=ON
LIB_DEPENDS+=	cups:${PORTSDIR}/print/cups-base
.else
CMAKE_ARGS+=	-DWITH_CUPS=OFF
.endif

.if ${PORT_OPTIONS:MPULSEAUDIO}
CMAKE_ARGS+=	-DWITH_PULSEAUDIO=ON
LIB_DEPENDS+=	pulse:${PORTSDIR}/audio/pulseaudio
PLIST_SUB+=	PULSE=""
.else
PLIST_SUB+=	PULSE="@comment "
CMAKE_ARGS+=	-DWITH_PULSEAUDIO=OFF
.endif

.if ${PORT_OPTIONS:MSSE}
CMAKE_ARGS+=	-DWITH_SSE2=ON
.else
CMAKE_ARGS+=	-DWITH_SSE2=OFF
.endif

post-extract:
	${REINPLACE_CMD} -e 's|$${CMAKE_INSTALL_LIBDIR}/pkgconfig|libdata/pkgconfig|' \
		${WRKSRC}/CMakeLists.txt
	${REINPLACE_CMD} -e 's|share/man/man1|man/man1|' \
		${WRKSRC}/client/X11/CMakeLists.txt
.include <bsd.port.mk>
