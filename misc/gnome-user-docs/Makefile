# Created by: Joe Marcus Clarke <marcus@FreeBSD.org>
# $FreeBSD: misc/gnome-user-docs/Makefile 316355 2013-04-23 14:20:25Z bapt $
#   $MCom: ports/misc/gnome-user-docs/Makefile,v 1.62 2010/09/30 06:07:30 kwm Exp $

PORTNAME=	gnome-user-docs
PORTVERSION=	2.32.0
CATEGORIES=	misc gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	GNOME 2 users guide

BUILD_DEPENDS=	rarian-sk-config:${PORTSDIR}/textproc/rarian
RUN_DEPENDS=	rarian-sk-config:${PORTSDIR}/textproc/rarian

USES=		pkgconfig
USE_BZIP2=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
INSTALLS_OMF=	yes
USE_GNOME=	gnomeprefix gnomehack gnomehier gnomedocutils

.include <bsd.port.mk>
