# Created by: Olivier Duchateau
# $FreeBSD: x11-themes/gtk3-unico-engine/Makefile 316355 2013-04-23 14:20:25Z bapt $

PORTNAME=	unico
PORTVERSION=	1.0.2
CATEGORIES=	x11-themes
MASTER_SITES=	https://launchpadlibrarian.net/98881788/ \
	https://launchpad.net/${PORTNAME}/${PORTVERSION:R}/${PORTVERSION}/+download/ \
	LOCAL/olivierd
PKGNAMEPREFIX=	gtk3-
PKGNAMESUFFIX=	-engine

MAINTAINER=	olivierd@FreeBSD.org
COMMENT=	Gtk+ 3.0 engine

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USES=		pkgconfig
USE_GNOME=	cairo glib20 gtk30
USE_LDCONFIG=	yes

.include <bsd.port.mk>
