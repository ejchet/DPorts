# New ports collection makefile for:	wmbday
# Date created:				2004-01-06
# Whom:					Ulrich Spoerlein <uspoerlein@gmail.com>
#
# $FreeBSD: ports/x11-clocks/wmbday/Makefile,v 1.18 2012/11/17 06:03:24 svnexp Exp $

PORTNAME=	wmbday
PORTVERSION=	0.3.1
PORTREVISION=	2
CATEGORIES=	x11-clocks
MASTER_SITES=	http://buzzinhornetz.ath.cx/wmbday/files/ \
		${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	uqs

MAINTAINER=	uqs@FreeBSD.org
COMMENT=	Window Maker dock app that will remind you of birthdays

BUILD_DEPENDS=	xmessage:${PORTSDIR}/x11/xmessage

HAS_CONFIGURE=	yes
MAKEFILE=	BSDmakefile
MAKE_ENV+=	${CONFIGURE_ENV} X11BASE=${LOCALBASE}

MAN1=		wmbday.1
MANCOMPRESSED=	yes

.include <bsd.port.mk>
