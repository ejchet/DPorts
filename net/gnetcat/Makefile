# New ports collection makefile for:	gnetcat
# Date created:		10 January 2004
# Whom:			liamfoy@sepulcrum.org
#
# $FreeBSD: net/gnetcat/Makefile 316662 2013-04-27 11:59:28Z mva $
#

PORTNAME=	gnetcat
PORTVERSION=	0.7.1
PORTREVISION=	3
CATEGORIES=	net
MASTER_SITES=	SF/netcat/netcat/${PORTVERSION}
DISTNAME=	netcat-0.7.1

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GPL'ed re-write of the well known networking tool netcat

USES=		gettext iconv
USE_BZIP2=	yes
GNU_CONFIGURE=	yes

INFO=		gnetcat
MAN1=		gnetcat.1
MANCOMPRESSED=	no
PLIST_FILES=	bin/gnetcat

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/netcat ${PREFIX}/bin/gnetcat
	${INSTALL_MAN} ${WRKSRC}/doc/netcat.1 ${PREFIX}/man/man1/gnetcat.1
	${INSTALL_DATA} ${WRKSRC}/doc/netcat.info ${PREFIX}/info/gnetcat.info

.include <bsd.port.mk>
