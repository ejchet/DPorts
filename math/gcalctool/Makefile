# Created by: Joe Marcus Clarke <marcus@FreeBSD.org>
# $FreeBSD: math/gcalctool/Makefile 316407 2013-04-24 07:35:40Z ak $
#   $MCom: ports/math/gcalctool/Makefile,v 1.140 2010/11/15 22:06:10 kwm Exp $

PORTNAME=	gcalctool
PORTVERSION=	5.32.2
PORTREVISION=	1
PORTEPOCH=	2
CATEGORIES=	math gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A GNOME 2 calculator tool based on the old calctool for OpenWindows

CONFLICTS=	gcalctool-2.31.*

USE_BZIP2=	yes
USES=		bison gettext
USE_GMAKE=	yes
USE_AUTOTOOLS=	libtool
USE_GNOME=	gnomeprefix gnomehack intlhack gconf2 gnomedocutils gtk20
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		gcalctool.1
GLIB_SCHEMAS=	org.gnome.gcalctool.gschema.xml

.include <bsd.port.mk>
