# New ports collection makefile for:	pidgin-manualsize
# Date created:		8 May 2008
# Whom:			Joseph S. Atkinson <jsatkinson@embarqmail.com>
#
# $FreeBSD: ports/net-im/pidgin-manualsize/Makefile,v 1.14 2012/11/17 06:00:28 svnexp Exp $
#

PORTNAME=	manualsize
PORTVERSION=	0.7
PORTREVISION=	3
CATEGORIES=	net-im
MASTER_SITES=	http://issv.org.ru/oss/ \
		http://wickedmachine.net/~jsa/FreeBSD/distfiles/
PKGNAMEPREFIX=	pidgin-
DISTNAME=	${PKGNAMEPREFIX}${PORTNAME}-${PORTVERSION}

MAINTAINER=	jsa@FreeBSD.org
COMMENT=	Plugin to allow manual resizing of Pidgin's message input area

BUILD_DEPENDS=	${LOCALBASE}/include/pidgin/pidgin.h:${PORTSDIR}/net-im/pidgin
RUN_DEPENDS=	pidgin:${PORTSDIR}/net-im/pidgin

MAKEFILE=	makefile

PLIST_FILES=	lib/pidgin/manualsize.so

USE_BZIP2=	yes
ALL_TARGET=	manualsize.so

post-patch:
	@${REINPLACE_CMD} -e 's|-g root -m 755|-g wheel -m 755|g' ${WRKSRC}/makefile

.include <bsd.port.mk>
