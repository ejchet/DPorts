# Created by: ijliao
# $FreeBSD: multimedia/libquicktime/Makefile 316355 2013-04-23 14:20:25Z bapt $

PORTNAME=	libquicktime
PORTVERSION=	1.2.4
PORTREVISION?=	4
CATEGORIES=	multimedia
MASTER_SITES=	SF

MAINTAINER=	mm@FreeBSD.org
COMMENT=	A library for reading and writing quicktime files

.if !defined(_BUILDING_LIBQUICKTIME_PLUGINS)
LIB_DEPENDS=	vorbis.4:${PORTSDIR}/audio/libvorbis
.endif

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/COPYING

USE_LDCONFIG=	yes
USES=		pathfix pkgconfig gettext
USE_GMAKE=	yes
MAKE_JOBS_SAFE=	yes
USE_AUTOTOOLS=	autoconf

CPPFLAGS+=	-I${LOCALBASE}/include ${PTHREAD_CFLAGS}
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS} -lintl

CFLAGS+=	-fPIC
.if !defined(_BUILDING_LIBQUICKTIME_PLUGINS)
USE_XORG=	xaw xv
CONFIGURE_ARGS=	--with-x --enable-gpl --without-doxygen --without-lame
MAN1=		lqtplay.1

OPTIONS_DEFINE=	ALSA DV FAAC FAAD FFMPEG GTK2 JPEG OPENGL OPTIMIZED_CFLAGS PNG \
		SCHROEDINGER X264 DOCS
OPTIONS_DEFAULT=	FFMPEG JPEG OPENGL PNG SCHROEDINGER X264

PORTDOCS=	api_usage.html codecs.html qt4l_building.html \
		qt4l_codecs.html qt4l_index.html \
		qt4l_license.html qt4l_opening.html qt4l_positioning.html \
		qt4l_reading.html qt4l_util.html qt4l_writing.html

.else
CONFIGURE_ARGS+=	--without-x --enable-gpl --without-doxygen
OPTIONS_DEFINE=	OPTIMIZED_CFLAGS
.endif

.include <bsd.port.options.mk>

.if ! ${PORT_OPTIONS:MOPTIMIZED_CFLAGS}
CONFIGURE_ARGS+=	--without-cpuflags
.endif

.if !defined(_BUILDING_LIBQUICKTIME_PLUGINS)
.if ${PORT_OPTIONS:MGTK2}
USE_GNOME+=	gtk20
CONFIGURE_ARGS+=	--with-gtk
PLIST_SUB+=	GTK=""
.else
CONFIGURE_ARGS+=	--without-gtk
PLIST_SUB+=	GTK="@comment "
.endif

.if ${PORT_OPTIONS:MALSA}
LIB_DEPENDS=	asound.2:${PORTSDIR}/audio/alsa-lib
.else
CONFIGURE_ARGS+=	--without-alsa
.endif

.if ${PORT_OPTIONS:MOPENGL}
USE_GL=		yes
CONFIGURE_ARGS+=	--with-opengl
.else
CONFIGURE_ARGS+=	--without-opengl
.endif

.if ${PORT_OPTIONS:MDV}
LIB_DEPENDS+=	dv.4:${PORTSDIR}/multimedia/libdv
PLIST_SUB+=	DV=""
CONFIGURE_ARGS+=	--with-libdv
.else
PLIST_SUB+=	DV="@comment "
CONFIGURE_ARGS+=	--without-libdv
.endif

.if ${PORT_OPTIONS:MJPEG}
LIB_DEPENDS+=	jpeg.11:${PORTSDIR}/graphics/jpeg
PLIST_SUB+=	JPEG=""
CONFIGURE_ARGS+=	--with-libjpeg
.else
PLIST_SUB+=	JPEG="@comment "
CONFIGURE_ARGS+=	--without-libjpeg
.endif

.if ${PORT_OPTIONS:MPNG}
LIB_DEPENDS+=	png15:${PORTSDIR}/graphics/png
PLIST_SUB+=	PNG=""
CONFIGURE_ARGS+=	--with-libpng
.else
PLIST_SUB+=	PNG="@comment "
CONFIGURE_ARGS+=	--without-libpng
.endif

.if ${PORT_OPTIONS:MFFMPEG}
LIB_DEPENDS+=	avcodec.1:${PORTSDIR}/multimedia/ffmpeg
PLIST_SUB+=	FFMPEG=""
CONFIGURE_ARGS+=	--with-ffmpeg
.else
PLIST_SUB+=	FFMPEG="@comment "
CONFIGURE_ARGS+=	--without-ffmpeg
.endif

.if ${PORT_OPTIONS:MFAAC}
LIB_DEPENDS+=	faac.0:${PORTSDIR}/audio/faac
PLIST_SUB+=	FAAC=""
CONFIGURE_ARGS+=	--with-faac
.else
PLIST_SUB+=	FAAC="@comment "
CONFIGURE_ARGS+=	--without-faac
.endif

.if ${PORT_OPTIONS:MFAAD}
LIB_DEPENDS+=	faad.2:${PORTSDIR}/audio/faad
PLIST_SUB+=	FAAD=""
CONFIGURE_ARGS+=	--with-faad2
.else
PLIST_SUB+=	FAAD="@comment "
CONFIGURE_ARGS+=	--without-faad2
.endif

.if ${PORT_OPTIONS:MX264}
LIB_DEPENDS+=	x264.125:${PORTSDIR}/multimedia/x264
PLIST_SUB+=	X264=""
CONFIGURE_ARGS+=	--with-x264
.else
PLIST_SUB+=	X264="@comment "
CONFIGURE_ARGS+=	--without-x264
.endif

.if ${PORT_OPTIONS:MSCHROEDINGER}
LIB_DEPENDS+=	schroedinger-1.0.11:${PORTSDIR}/multimedia/schroedinger
PLIST_SUB+=	SCHROEDINGER=""
.else
PLIST_SUB+=	SCHROEDINGER="@comment "
CONFIGURE_ARGS+=	--without-schroedinger
.endif

.endif

AUTOTOOLSFILES=	aclocal.m4

post-patch:
	@${REINPLACE_CMD} -e 's|2.64|%%AUTOCONF_VERSION%%|g' ${WRKSRC}/aclocal.m4
	@${REINPLACE_CMD} -e 's|stdint.h|inttypes.h|' \
		${WRKSRC}/plugins/audiocodec/* \
		${WRKSRC}/plugins/videocodec/*
	@${REINPLACE_CMD} -e '/objformat=/s|=.*|=elf|' ${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's|-DG.*_DISABLE_DEPRECATED||g' \
		${WRKSRC}/configure*

pre-configure:
	@${CHMOD} +x ${WRKSRC}/configure

.if ${PORT_OPTIONS:MDOCS} && !defined(_BUILDING_LIBQUICKTIME_PLUGINS)
post-install:
	@${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS}
	@${INSTALL_DATA} ${WRKSRC}/doc/${f} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
