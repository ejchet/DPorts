# Created by: Emanuel Haupt <ehaupt@FreeBSD.org>
# $FreeBSD: net/nyancat/Makefile 323578 2013-07-24 08:19:07Z ehaupt $

PORTNAME=	nyancat
PORTVERSION=	1.2
PORTEPOCH=	1
CATEGORIES=	net games

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Animated telnet server that renders a loop of the nyan cat animation

USE_GITHUB=	yes
GH_ACCOUNT=	klange
GH_TAGNAME=	${PORTVERSION}
GH_COMMIT=	89c5bc8

SUB_FILES=	pkg-message
PLIST_FILES=	bin/nyancat

WRKSRC=		${WRKDIR}/${GH_ACCOUNT}-${PORTNAME}-${GH_COMMIT}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/${PORTNAME} ${PREFIX}/bin

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
