# New ports collection makefile for:	gmpc-lyricsplugin
# Date created:		September 14 2007
# Whom:			Martin Wilke <miwi@FreeBSD.org>
#
# $FreeBSD: audio/gmpc-lyricsplugin/Makefile 316464 2013-04-24 18:10:30Z ak $
#

PORTNAME=	gmpc-lyricsplugin
PORTVERSION=	0.20.0
PORTREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	http://download.sarine.nl/Programs/gmpc/${PORTVERSION}/ \
		http://freebsd.unixfreunde.de/sources/

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	A fetch lyrics gmpc plugin

LIB_DEPENDS=	mpd.4:${PORTSDIR}/audio/libmpd
BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/gmpc.pc:${PORTSDIR}/audio/gmpc
RUN_DEPENDS=	gmpc:${PORTSDIR}/audio/gmpc

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_GNOME=	pkgconfig intltool glib20 gtk20 libxml2
USES=		gettext

PLIST_FILES=	lib/gmpc/plugins/lyricspluginplugin.la \
		lib/gmpc/plugins/lyricspluginplugin.so
PLIST_DIRSTRY=	lib/gmpc/plugins lib/gmpc

.include <bsd.port.mk>
