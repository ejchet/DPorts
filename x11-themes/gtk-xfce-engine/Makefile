# Created by: olgeni@FreeBSD.org
# $FreeBSD: x11-themes/gtk-xfce-engine/Makefile 316355 2013-04-23 14:20:25Z bapt $

PORTNAME=	gtk-xfce-engine
PORTVERSION=	3.0.1
CATEGORIES=	x11-themes xfce
MASTER_SITES=	${MASTER_SITE_XFCE}
MASTER_SITE_SUBDIR=	src/xfce/${PORTNAME}/${PORTVERSION:R}
DIST_SUBDIR=	xfce4

MAINTAINER=	xfce@FreeBSD.org
COMMENT=	Xfce gtk theme engine

GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_GNOME=	glib20 gnomehack gtk20
USE_XFCE=	configenv	# to get MASTER_SITE_SUBDIR something has to be defined
USES=		pkgconfig

CONFIGURE_ARGS+=--disable-glibtest \
	--enable-gtk2 \
	--disable-gtk3

.include <bsd.port.mk>
