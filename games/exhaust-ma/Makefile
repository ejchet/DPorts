# New ports collection makefile for:	games/exhaust-ma
# Date created:			7 Aug 2005
# Whom:				Alejandro Pulver <alejandro@varnet.biz>
#
# $FreeBSD: ports/games/exhaust-ma/Makefile,v 1.7 2012/11/17 05:57:37 svnexp Exp $
#

PORTNAME=	exhaust-ma
PORTVERSION=	1.9
CATEGORIES=	games
MASTER_SITES=	http://corewar.co.uk/ankerl/
DISTNAME=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Redcode simulator easy to embed into applications

USE_ZIP=	yes
USE_GMAKE=	yes

NO_WRKSUBDIR=	yes

USE_DOS2UNIX=	yes

PLIST_FILES=	bin/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/exhaust ${PREFIX}/bin/${PORTNAME}

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
