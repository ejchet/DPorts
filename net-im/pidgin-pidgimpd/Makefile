# New ports collection makefile for:   pidgin-pidgimpd
# Date created:		21 September 2008
# Whom:			hrkfrd@googlemail.com
#
# $FreeBSD: net-im/pidgin-pidgimpd/Makefile 316662 2013-04-27 11:59:28Z mva $
#

PORTNAME=	pidgimpd
PORTVERSION=	1.1.1
PORTREVISION=	9
CATEGORIES=	net-im audio
MASTER_SITES=	http://ayeon.org/projects/pidgimpd/
PKGNAMEPREFIX=	pidgin-

MAINTAINER=	hrkfdn@gmail.com
COMMENT=	PidgiMPD is a Pidgin plugin for monitoring/controlling MPD

LIB_DEPENDS=	purple.10:${PORTSDIR}/net-im/libpurple \
		mpd.4:${PORTSDIR}/audio/libmpd
BUILD_DEPENDS=	pidgin:${PORTSDIR}/net-im/pidgin
RUN_DEPENDS=	pidgin:${PORTSDIR}/net-im/pidgin

USE_BZIP2=	yes
USE_GNOME=	gtk20
USES=		pkgconfig iconv
GNU_CONFIGURE=	yes

PLIST_FILES=	lib/pidgin/pidgimpd.so \
		lib/pidgin/pidgimpd.la

.include <bsd.port.mk>
