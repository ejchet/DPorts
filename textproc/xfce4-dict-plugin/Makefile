# Created by: Oliver Lehmann (oliver@FreeBSD.org)
# $FreeBSD: textproc/xfce4-dict-plugin/Makefile 319074 2013-05-25 20:17:53Z olivierd $
#

PORTNAME=	xfce4-dict
PORTVERSION=	0.7.0
CATEGORIES=	textproc xfce
MASTER_SITES=	${MASTER_SITE_XFCE}
MASTER_SITE_SUBDIR=	src/apps/${PORTNAME}/${PORTVERSION:R}
PKGNAMESUFFIX=	-plugin
DIST_SUBDIR=	xfce4

MAINTAINER=	xfce@FreeBSD.org
COMMENT=	Xfce4 plugin to query different dictionaries

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
INSTALLS_ICONS=	yes
USES=		gettext pkgconfig
USE_GMAKE=	yes
USE_GNOME=	glib20 gtk20 intltool intlhack
USE_XFCE=	configenv libmenu libutil panel
USE_XORG=	x11
USE_LDCONFIG=	yes

MAN1=		xfce4-dict.1

.include <bsd.port.mk>
