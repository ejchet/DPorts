# New ports collection makefile for: arprelease
# Date created:		02 Aug 2001
# Whom:			nbm
#
# $FreeBSD: ports/net/arprelease/Makefile,v 1.11 2013/02/18 21:46:32 svnexp Exp $
#

PORTNAME=	arprelease
PORTVERSION=	1.2
PORTREVISION=	3
CATEGORIES=	net
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Libnet tool to flush arp cache entries from devices (eg. routers)

LIB_DEPENDS=	net:${PORTSDIR}/net/libnet

WRKSRC=		${WRKDIR}/${PORTNAME}

PLIST_FILES=	bin/arprelease

LIBNET_CONFIG?=	${LOCALBASE}/bin/libnet11-config

do-build:
	(cd ${WRKSRC} && \
		${CC} ${CFLAGS} `${LIBNET_CONFIG} --defines` \
		`${LIBNET_CONFIG} --cflags` -o arprelease arprelease.c \
		`${LIBNET_CONFIG} --libs`)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arprelease ${PREFIX}/bin

.include <bsd.port.mk>
