# Created by: Oliver Lehmann <oliver@FreeBSD.org>
# $FreeBSD: misc/xfce4-appfinder/Makefile 317681 2013-05-08 15:35:23Z olivierd $
#

PORTNAME=	xfce4-appfinder
PORTVERSION=	4.10.1
CATEGORIES=	misc xfce
MASTER_SITES=	${MASTER_SITE_XFCE}
MASTER_SITE_SUBDIR=	src/xfce/${PORTNAME}/${PORTVERSION:R}
DIST_SUBDIR=	xfce4

MAINTAINER=	xfce@FreeBSD.org
COMMENT=	Application launcher and finder

LIB_DEPENDS=	dbus-glib-1:${PORTSDIR}/devel/dbus-glib

GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USES=		pathfix pkgconfig
USE_GMAKE=	yes
USE_GNOME=	gtk20 glib20 intltool intlhack
USE_XFCE=	configenv garcon libmenu libutil xfconf

OPTIONS_DEFINE=	NLS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=	gettext
CONFIGURE_ARGS+=--enable-nls
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.include <bsd.port.mk>
