# New ports collection makefile for:	nifmon
# Date created:				Feb 2 2004
# Whom:					Simon Barner <barner@gmx.de>
#
# $FreeBSD: ports/net/nifmon/Makefile,v 1.4 2012/11/17 06:00:07 svnexp Exp $
#

PORTNAME=	nifmon
PORTVERSION=	1.4
CATEGORIES=	net
MASTER_SITES=	http://www.freebsd-support.de/misc/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A curses based network interface monitoring tool

MAN8=		nifmon.8
PLIST_FILES=	bin/nifmon

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nifmon ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nifmon.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
