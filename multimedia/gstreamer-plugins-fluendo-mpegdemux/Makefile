# New ports collection makefile for:	gstreamer-plugins-fluendo-mpegdemux
# Date created:		2007-02-25
# Whom:			Michael Johnson <ahze@FreeBSD.org>
#
# $FreeBSD: ports/multimedia/gstreamer-plugins-fluendo-mpegdemux/Makefile,v 1.13 2012/11/17 05:59:49 svnexp Exp $
#

PORTNAME=	gstreamer-plugins-fluendo-mpegdemux
PORTVERSION=	0.10.71
CATEGORIES=	multimedia
MASTER_SITES=	http://core.fluendo.com/gstreamer/src/gst-fluendo-mpegdemux/
DISTNAME=	gst-fluendo-mpegdemux-${PORTVERSION}

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	MPEG2 demuxing gstreamer plugin from fluendo

LICENSE=	MPL

CFLAGS:=	${CFLAGS} -O2
USE_BZIP2=	yes
USE_GSTREAMER=	yes
GNU_CONFIGURE=	yes
PLIST_FILES=	lib/gstreamer-0.10/libgstflumpegdemux.la \
		lib/gstreamer-0.10/libgstflumpegdemux.so

.include <bsd.port.mk>
