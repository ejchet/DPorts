# New ports collection makefile for:	gnomegames2-extra-data
# Date created:				16 August 2004
# Whom:					Adam Weinberger <adamw@FreeBSD.org>
#
# $FreeBSD: ports/games/gnome-games-extra-data/Makefile,v 1.26 2012/11/17 05:57:40 svnexp Exp $
#   $MCom: ports/games/gnome-games-extra-data/Makefile,v 1.31 2010/04/02 18:32:52 kwm Exp $
#

PORTNAME=	gnome-games-extra-data
PORTVERSION=	2.30.0
PORTREVISION=	2
CATEGORIES=	games gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Themes and artwork for the gnome-games package

RUN_DEPENDS=	${LOCALBASE}/bin/lightsoff:${PORTSDIR}/games/gnome-games

USE_BZIP2=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_GNOME=	gnomehack gnomeprefix
CONFIGURE_ARGS=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
