# Created by: Warren Toomey <wkt@cs.adfa.edu.au>
# $FreeBSD: ports/security/pktsuckers/Makefile,v 1.13 2012/12/10 05:36:29 svnexp Exp $

PORTNAME=	pktsuckers
PORTVERSION=	1.2
CATEGORIES=	security
MASTER_SITES=	ftp://minnie.tuhs.org/pub/NetSecurity/
DISTNAME=	${PORTNAME}${PORTVERSION:S/./_/}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Log contents of unwanted UDP packets and TCP connections

PLIST_FILES=	libexec/tcpsuck libexec/udpsuck

post-patch:
	@${REINPLACE_CMD} -e \
		's|^void main|int main|' ${WRKSRC}/tcpsuck.c ${WRKSRC}/udpsuck.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpsuck ${PREFIX}/libexec
	${INSTALL_PROGRAM} ${WRKSRC}/udpsuck ${PREFIX}/libexec
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
