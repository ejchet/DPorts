# New ports collection makefile for: bass (Beneath a Steel Sky)
# Date created:        Tue Sep  2 23:34:32 BST 2003
# Whom:                Alex Trull <freebsd.alex@trull.org>
#
# $FreeBSD: games/bass/Makefile 313182 2013-03-02 03:55:25Z eadler $
#

PORTNAME=	bass
PORTVERSION=	1.2
PORTREVISION=	3
CATEGORIES=	games
MASTER_SITES=	SF/scummvm/extras/Beneath%20a%20Steel%20Sky
DISTNAME=	bass-cd-1.2

MAINTAINER=	lme@FreeBSD.org
COMMENT=	Beneath a Steel Sky: a post-apocalyptic futuristic graphical adventure

LICENSE=	unknown
LICENSE_NAME=	no name
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept
LICENSE_FILE=	${WRKSRC}/readme.txt

RUN_DEPENDS=	scummvm:${PORTSDIR}/games/scummvm

USE_ZIP=	yes
NO_BUILD=	yes

WRKSRC=		${WRKDIR}/${DISTNAME}
SUB_FILES=	pkg-message

do-install:
	${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/sky.dnr ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/sky.dsk ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/sky.cpt ${DATADIR}

.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for docs in readme.txt
	@${INSTALL_DATA} ${WRKSRC}/${docs} ${DOCSDIR}
.endfor
.endif

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
