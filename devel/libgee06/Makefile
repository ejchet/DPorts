# Created by: Frank Steinborn <steinex@nognu.de>
# $FreeBSD: devel/libgee06/Makefile 316333 2013-04-23 10:13:19Z bapt $
#    $MCom: ports/devel/libgee/Makefile,v 1.13 2012/10/14 20:47:22 kwm Exp $

PORTNAME=	libgee
PORTVERSION=	0.6.8
CATEGORIES=	devel
MASTER_SITES=	GNOME

MAINTAINER=	kwm@FreeBSD.org
COMMENT=	GObject collection library

BUILD_DEPENDS=	gobject-introspection>=0.9.0:${PORTSDIR}/devel/gobject-introspection

LATEST_LINK=	${PORTNAME}06
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-introspection=yes
USE_GMAKE=	yes
USE_XZ=		yes
USE_GNOME=	glib20 gnomehier gnomehack
USES=		pkgconfig
USE_LDCONFIG=	yes

.include <bsd.port.mk>
