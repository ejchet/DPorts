# Created by: Peter Vereshagin <peter@vereshagin.org>
# $FreeBSD: www/links-hacked/Makefile 319952 2013-06-05 06:59:44Z bapt $

PORTNAME=	links-hacked
DISTVERSION=	101110
PORTREVISION=	2
CATEGORIES?=	www
MASTER_SITES=	http://xray.sai.msu.ru/~karpov/links-hacked/downloads/ http://links-hacked.nm.ru/

MAINTAINER=	peter@vereshagin.org
COMMENT=	Hacked version of a Links WWW browser

LIB_DEPENDS+=	execinfo:${PORTSDIR}/devel/libexecinfo \
		gdbm:${PORTSDIR}/databases/gdbm

CONFLICTS=	links-[0-9]*

USE_AUTOTOOLS?=	autoconf autoheader aclocal automake
AUTOMAKE_ARGS?=	-a -c

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-ssl --without-pmshell --without-atheos \
			--without-fb --enable-form-saving --enable-javascript
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -lexecinfo

USE_OPENSSL=	yes

OPTIONS_DEFINE=	SVGALIB DIRECTFB X11 FORMSAVE JS FREETYPE
OPTIONS_DEFAULT=	X11 FORMSAVE JS FREETYPE
DIRECTFB_DESC=	directfb driver support
FORMSAVE_DESC=	Enable forms saving
JS_DESC=	Enable Javascript (very basic)

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MSVGALIB} || ${PORT_OPTIONS:MX11} || ${PORT_OPTIONS:MDIRECTFB}
LIB_DEPENDS+=	png15:${PORTSDIR}/graphics/png \
		jpeg.11:${PORTSDIR}/graphics/jpeg \
		tiff.4:${PORTSDIR}/graphics/tiff
CONFIGURE_ARGS+=	--enable-graphics
.else
CONFIGURE_ARGS+=	--disable-graphics --without-libjpeg --without-libtiff
.endif

.if ${PORT_OPTIONS:MSVGALIB}
LIB_DEPENDS+=	vga.1:${PORTSDIR}/graphics/svgalib
CONFIGURE_ARGS+=	--with-svgalib
.else
CONFIGURE_ARGS+=	--without-svgalib
.endif

.if ${PORT_OPTIONS:MDIRECTFB}
LIB_DEPENDS+=	directfb-1.4.5:${PORTSDIR}/devel/directfb
CONFIGURE_ARGS+=	--with-directfb
.else
CONFIGURE_ARGS+=	--without-directfb
.endif

.if ${PORT_OPTIONS:MX11}
USE_XORG=	x11 xproto
CONFIGURE_ARGS+=	--with-x
DESKTOP_ENTRIES="Links" \
		"Lynx-like hacked WWW browser" \
		"${PREFIX}/share/pixmaps/links.xpm" \
		"links -g" \
		"Network;WebBrowser;" \
		false
PLIST_FILES+=	share/pixmaps/links.xpm
.else
CONFIGURE_ARGS+=	--without-x
.endif

.if ${PORT_OPTIONS:MFREETYPE}
LIB_DEPENDS+=	freetype.9:${PORTSDIR}/print/freetype2
CONFIGURE_ARGS+=	--with-freetype
.else
CONFIGURE_ARGS+=	--without-freetype
.endif

.if ${PORT_OPTIONS:MFORMSAVE}
CONFIGURE_ARGS+=	--enable-form-saving
.else
CONFIGURE_ARGS+=	--disable-form-saving
.endif

.if ${PORT_OPTIONS:MJS}
CONFIGURE_ARGS+=	--enable-javascript
.else
CONFIGURE_ARGS+=	--disable-javascript
.endif

MAN1=		links.1
PLIST_FILES+=	bin/links

.if ${PORT_OPTIONS:MX11}
post-install:
	@${INSTALL_DATA} ${WRKSRC}/graphics/links.xpm ${PREFIX}/share/pixmaps/links.xpm
.endif

.include <bsd.port.mk>
