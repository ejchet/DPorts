# Ports collection Makefile for: paman
# Date created:		2008-01-15
# Whom:			Romain Tartiere <romain@blogreen.org>
#
# $FreeBSD: audio/paman/Makefile 314640 2013-03-19 13:04:30Z eadler $
#

PORTNAME=	paman
PORTVERSION=	0.9.4
PORTREVISION=	4
CATEGORIES=	audio
MASTER_SITES=	http://0pointer.de/lennart/projects/${PORTNAME}/

MAINTAINER=	romain@FreeBSD.org
COMMENT=	Gtk frontend for PulseAudio

LIB_DEPENDS=	glademm-2.4.1:${PORTSDIR}/devel/libglademm24 \
		pulse.0:${PORTSDIR}/audio/pulseaudio

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USES=	pathfix

CONFIGURE_ARGS=	--disable-lynx

.include <bsd.port.mk>
