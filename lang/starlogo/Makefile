# Created by: Jose Marques
# $FreeBSD: ports/lang/starlogo/Makefile,v 1.16 2012/12/10 13:24:59 svnexp Exp $

PORTNAME=	starlogo
PORTVERSION=	2.0.2
PORTREVISION=	2
CATEGORIES=	lang java
MASTER_SITES=	http://education.mit.edu/starlogo/download/
DISTNAME=	${PORTNAME}-2.0

MAINTAINER=	java@FreeBSD.org
COMMENT=	Specialized version of the Logo programming language written in Java

USE_JAVA=	yes
JAVA_VERSION=	1.6+

USE_ZIP=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}
DATADIR=	${JAVASHAREDIR}/${PORTNAME}

NO_BUILD=	yes
SUB_FILES=	starlogo.sh

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/starlogo.sh ${PREFIX}/bin/starlogo
	cd ${WRKSRC} \
	  && ${FIND} . -type d -exec ${MKDIR} ${DATADIR}/{} \; \
	  && ${FIND} . -type f -exec ${INSTALL_DATA} {} ${DATADIR}/{} \;

.include <bsd.port.mk>
