# New ports collection makefile for:   flexdock
# Date created:        25 Nov 2009
# Whom:                Otacilio de Araujo Ramos Neto <otacilio.neto@bsd.com.br>
#
# $FreeBSD: ports/devel/flexdock/Makefile,v 1.6 2012/11/17 05:55:43 svnexp Exp $
#

PORTNAME=	flexdock
PORTVERSION=	1.1
CATEGORIES=	devel java
MASTER_SITES=	http://java.net/downloads/${PORTNAME}/
DISTNAME=	${PORTNAME}-${PORTVERSION}-src

MAINTAINER=	otacilio.neto@bsd.com.br
COMMENT=	Swing windowing and docking framework

USE_ZIP=	yes
USE_ANT=	yes
USE_JAVA=	yes

NO_WRKSUBDIR=	yes

ALL_TARGET=	dist

PLIST_FILES=	${JAVAJARDIR:C^${PREFIX}/^^}/${PORTNAME}.jar
PORTDOCS=	"User Guide.pdf" api

do-install:
	${INSTALL_DATA}	${WRKSRC}/build/${PORTNAME}-${PORTVERSION}.jar ${JAVAJARDIR}/${PORTNAME}.jar

post-install:
.if !defined(NOPORTDOCS)
	@${ECHO_MSG} -n ">> Installing documentation files..."
	@${MKDIR} ${DOCSDIR}
	@(cd ${WRKSRC}/build/docs && ${COPYTREE_SHARE} \* ${DOCSDIR})
	@${ECHO_MSG} " [ DONE ]"
.endif

.include <bsd.port.mk>
