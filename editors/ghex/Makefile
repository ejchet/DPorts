# New ports collection makefile for:	ghex2
# Date created:				15 September 2002
# Whom:					Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: editors/ghex/Makefile 316464 2013-04-24 18:10:30Z ak $
#   $MCom: ports/editors/ghex/Makefile,v 1.13 2008/08/23 18:22:59 mezz Exp $
#

PORTNAME=	ghex
PORTVERSION=	2.24.0
PORTREVISION=	5
CATEGORIES=	editors gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	GNOME 2 hex editor

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GNOME=	gnomeprefix gnomehack intlhack libgnomeprintui libgnomeui \
		gnomedocutils
USES=		gettext
GNU_CONFIGURE=	yes
INSTALLS_ICONS=	yes
USE_LDCONFIG=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

GCONF_SCHEMAS=	ghex2.schemas

.include <bsd.port.mk>
