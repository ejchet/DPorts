# New ports collection makefile for:   mybatis
# Date created:        5 December 2010
# Whom:                glewis
#
# $FreeBSD: ports/databases/java-mybatis/Makefile,v 1.4 2012/11/17 05:55:08 svnexp Exp $
#

PORTNAME=	mybatis
PORTVERSION=	3.0.3
PORTREVISION=	1
CATEGORIES=	databases devel java
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}
PKGNAMEPREFIX=	java-
DISTFILES=	${PORTNAME}-${PORTVERSION}-bundle${EXTRACT_SUFX}
.if !defined(NOPORTDOCS)
DISTFILES+=	${USER_GUIDE}
EXTRACT_ONLY=	${PORTNAME}-${PORTVERSION}-bundle${EXTRACT_SUFX}
.endif

MAINTAINER=	glewis@FreeBSD.org
COMMENT=	SQL Mapping Framework

USE_JAVA=	yes
USE_ZIP=	yes
LICENSE=	AL2
NO_BUILD=	yes

JAR_FILE=	${PORTNAME}-${PORTVERSION}.jar
DEST_JAR_FILE=	${PORTNAME}.jar
USER_GUIDE=	MyBatis-${PORTVERSION}-User-Guide.pdf

PLIST_FILES+=	%%JAVAJARDIR%%/${DEST_JAR_FILE}

.if !defined(NOPORTDOCS)
PORTDOCS=	*
.endif

do-install:
	@${INSTALL_DATA} ${WRKSRC}/${JAR_FILE} ${JAVAJARDIR}/${DEST_JAR_FILE}
.if !defined(NOPORTDOCS)
	@-${MKDIR} ${DOCSDIR}
.for f in LICENSE NOTICE
	@${INSTALL_DATA} ${WRKSRC}/${f} ${DOCSDIR}
.endfor
	@${INSTALL_DATA} ${DISTDIR}/${USER_GUIDE} ${DOCSDIR}
.endif

.include <bsd.port.mk>
