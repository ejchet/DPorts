# Created by: Nikos Ntarmos <ntarmos@ceid.upatras.gr>
# $FreeBSD: x11-wm/awesome/Makefile 319055 2013-05-25 14:37:02Z zeising $

PORTNAME=	awesome
PORTVERSION=	3.5.1
PORTREVISION=	2
PORTEPOCH=	1
CATEGORIES=	x11-wm
MASTER_SITES=	http://awesome.naquadah.org/download/

MAINTAINER=	garga@FreeBSD.org
COMMENT=	A highly configurable, next generation framework window manager

LICENSE=	GPLv2

BUILD_DEPENDS=	asciidoc:${PORTSDIR}/textproc/asciidoc \
		convert:${PORTSDIR}/graphics/ImageMagick \
		pango>=1.19.3:${PORTSDIR}/x11-toolkits/pango \
		xmlto:${PORTSDIR}/textproc/xmlto \
		xcb-util>=0.3.8:${PORTSDIR}/x11/xcb-util \
		xproto>=7.0.11:${PORTSDIR}/x11/xproto \
		${LUA_MODLIBDIR}/lgi/corelgilua51.so:${PORTSDIR}/devel/lua-lgi \
		${LOCALBASE}/share/xml/docbook/4.5/docbookx.dtd:${PORTSDIR}/textproc/docbook-xml-450
RUN_DEPENDS=	${LUA_MODLIBDIR}/lgi/corelgilua51.so:${PORTSDIR}/devel/lua-lgi
LIB_DEPENDS=	cairo:${PORTSDIR}/graphics/cairo \
		ev:${PORTSDIR}/devel/libev \
		freetype:${PORTSDIR}/print/freetype2 \
		startup-notification-1:${PORTSDIR}/x11/startup-notification \
		xdg-basedir:${PORTSDIR}/x11/libxdg-basedir \
		xcb-util:${PORTSDIR}/x11/xcb-util \
		xcb-image:${PORTSDIR}/x11/xcb-util-image \
		xcb-keysyms:${PORTSDIR}/x11/xcb-util-keysyms \
		xcb-icccm:${PORTSDIR}/x11/xcb-util-wm \
		execinfo:${PORTSDIR}/devel/libexecinfo

USE_XZ=		yes
USES=		cmake iconv
CMAKE_ARGS+=	-DSYSCONFDIR=${PREFIX}/etc
USE_EFL=	imlib2
USE_GNOME=	glib20 pango
USE_LUA=	5.1+
USE_XORG=	pixman x11 xau xcb xdmcp xext xft xinerama xrandr xrender \
		xproto

MAN1=	awesome.1 \
	awesome-client.1
MAN5=	awesomerc.5
MANLANG=	"" de es fr it ru
MANCOMPRESSED=	yes
PORTDOCS=	AUTHORS BUGS LICENSE README

OPTIONS_DEFINE=	DBUS DOCS
OPTIONS_DEFAULT=DBUS DOCS

.include <bsd.port.pre.mk>

.if	(exists(${LOCALBASE}/libdata/pkgconfig/cairo.pc) && \
	!exists(${LOCALBASE}/libdata/pkgconfig/cairo-xcb.pc))
IGNORE=	cannot find dependency: The cairo exists but not with XCB support. Please reinstall graphics/cairo with XCB support
.endif

.if ${PORT_OPTIONS:MDBUS}
LIB_DEPENDS += dbus-1.3:${PORTSDIR}/devel/dbus
CMAKE_ARGS += -DWITH_DBUS=YES
.else
CMAKE_ARGS += -DWITH_DBUS=NO
.endif

.if ${PORT_OPTIONS:MDOCS}
CMAKE_ARGS += -DINSTALL_PORTDOCS=YES -DGENERATE_DOC=YES
.else
CMAKE_ARGS += -DINSTALL_PORTDOCS=NO -DGENERATE_DOC=NO
.endif

post-patch:
	@${REINPLACE_CMD} -e "/LUA_EXECUTABLE lua/ s,lua,lua-${LUA_VER}," \
		${WRKSRC}/awesomeConfig.cmake
	@${REINPLACE_CMD} -e "s,^lua ,${LUA_CMD} ," \
		${WRKSRC}/build-utils/lgi-check.sh

.include <bsd.port.post.mk>
