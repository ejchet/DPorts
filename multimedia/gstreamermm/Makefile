# Created by: Michael Johnson <ahze@FreeBSD.org>
# $FreeBSD: multimedia/gstreamermm/Makefile 316355 2013-04-23 14:20:25Z bapt $
#    $MCom: ports/multimedia/gstreamermm/Makefile,v 1.6 2009/09/26 13:42:00 marcus Exp $

PORTNAME=	gstreamermm
PORTVERSION=	0.10.10.2
CATEGORIES=	multimedia
MASTER_SITES=	GNOME

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	C++ wrapper library for the multimedia library GStreamer

LICENSE=	LGPL21

LIB_DEPENDS=	gtkmm-2.4.1:${PORTSDIR}/x11-toolkits/gtkmm24

USES=		pkgconfig
USE_XZ=		yes
USE_GMAKE=	yes
USE_GSTREAMER=	theora vorbis cdparanoia gio pango
USE_GNOME=	gnomeprefix gnomehack
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-documentation
USE_LDCONFIG=	yes
PLIST_SUB=	GST_VERSION="${GST_VERSION}"

post-patch:
# Fix the build with clang
	@${REINPLACE_CMD} -e 's|GREP "\\-L"|GREP "conftest\\.$$objext"|g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
