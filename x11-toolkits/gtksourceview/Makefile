# New ports collection makefile for:	gtksourceview
# Date created:				07 May 2003
# Whom:					Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: x11-toolkits/gtksourceview/Makefile 316464 2013-04-24 18:10:30Z ak $
#   $MCom: ports/x11-toolkits/gtksourceview/Makefile,v 1.46 2007/05/19 21:36:33 marcus Exp $
#

PORTNAME=	gtksourceview
PORTVERSION=	1.8.5
PORTREVISION?=	8
CATEGORIES=	x11-toolkits gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A text widget that adds syntax highlighting to the GtkTextView widget

USE_BZIP2=	yes

.if !defined(REFERENCE_PORT)

USES=		gettext
USE_GMAKE=	yes
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes
USE_GNOME=	gnomeprefix gnomehack libgnome libgnomeprintui intlhack \
		ltverhack referencehack
CONFIGURE_ARGS=	--enable-compile-warnings=no
CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib -lgnuregex"
CPPFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.mk>

.endif
