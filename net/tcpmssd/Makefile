# New ports collection makefile for:	tcpmssd
# Date created:		17 July 2000
# Whom:			ru
#
# $FreeBSD: ports/net/tcpmssd/Makefile,v 1.8 2012/11/17 06:00:22 svnexp Exp $
#

PORTNAME=	tcpmssd
PORTVERSION=	1.1
CATEGORIES=	net
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A utility to correct requested TCP receive segment size

WRKSRC=		${WRKDIR}/src

SRC=		${.CURDIR}/src

MAN8=		tcpmssd.8
PLIST_FILES=	bin/tcpmssd

do-fetch:
	@${DO_NADA}

pre-patch:
	@${CP} -R ${SRC} ${WRKDIR}

do-build:
	(cd ${WRKSRC} && ${MAKE} tcpmssd)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpmssd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpmssd.8 ${MAN8PREFIX}/man/man8

.include <bsd.port.mk>
