# Created by: Matt Lancereau <ports@FreeBSD.org>
# $FreeBSD: sysutils/xfce4-genmon-plugin/Makefile 317695 2013-05-08 16:05:21Z olivierd $

PORTNAME=	xfce4-genmon-plugin
PORTVERSION=	3.4.0
PORTREVISION=	2
CATEGORIES=	sysutils xfce
MASTER_SITES=	${MASTER_SITE_XFCE}
MASTER_SITE_SUBDIR=	src/panel-plugins/${PORTNAME}/${PORTVERSION:R}
DIST_SUBDIR=	xfce4

MAINTAINER=	xfce@FreeBSD.org
COMMENT=	Generic Monitor Xfce4 panel plugin

GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_GMAKE=	yes
USES=        pathfix gettext pkgconfig
USE_GNOME=	gtk20 intltool intlhack
USE_XFCE=	configenv libmenu panel

WRKSRC=	${WRKDIR}/${PORTNAME}-${PORTVERSION:R}

.include <bsd.port.mk>
