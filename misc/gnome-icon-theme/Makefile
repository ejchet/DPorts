# Created by: Joe Marcus Clarke <marcus@FreeBSD.org>
# $FreeBSD: misc/gnome-icon-theme/Makefile 318264 2013-05-15 21:18:01Z kwm $
#   $MCom: ports/misc/gnome-icon-theme/Makefile,v 1.149 2010/08/30 13:45:30 avl Exp $

PORTNAME=	gnome-icon-theme
PORTVERSION=	2.31.0
PORTREVISION=	3
CATEGORIES=	misc gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Collection of icons for the GNOME desktop

BUILD_DEPENDS=	${LOCALBASE}/share/icons/hicolor/index.theme:${PORTSDIR}/misc/hicolor-icon-theme \
		icon-naming-utils>=0.8.7:${PORTSDIR}/x11-themes/icon-naming-utils
RUN_DEPENDS=	${LOCALBASE}/share/icons/hicolor/index.theme:${PORTSDIR}/misc/hicolor-icon-theme

USE_BZIP2=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USES=		pathfix
USE_GNOME=	intlhack
INSTALLS_ICONS=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
