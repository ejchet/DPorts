# Created by: janos.mohacsi@bsd.hu
# $FreeBSD: ports/games/py-ski/Makefile,v 1.3 2013/01/09 20:04:45 svnexp Exp $

PORTNAME=	ski
PORTVERSION=	6.5
CATEGORIES=	games python
MASTER_SITES=	http://catb.org/~esr/ski/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	jmohacsi@bsd.hu
COMMENT=	Skiing simulation with curses interface in python

USE_PYTHON=	yes
NO_BUILD=	yes
MAN6=		ski.6
PLIST_FILES=	bin/ski

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ski ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ski.6 ${PREFIX}/man/man6/

.include <bsd.port.mk>
