# Created by: gahr
# $FreeBSD: ports/audio/gervill/Makefile,v 1.4 2012/12/10 13:24:54 svnexp Exp $

PORTNAME=	gervill
PORTVERSION=	1.0
CATEGORIES=	audio java
MASTER_SITES=	SF/rasmusdsp/${PORTNAME}/Gervill%20${PORTVERSION}

MAINTAINER=	gahr@FreeBSD.org
COMMENT=	A generic sound synthesizer for Java

USE_ZIP=	yes
USE_JAVA=	yes
JAVA_VERSION=	1.6+
USE_ANT=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}
ALL_TARGET=	jar
JARFILE=	${PORTNAME}.jar
PLIST_FILES=	%%JAVAJARDIR%%/${JARFILE}
PORTDOCS=	*

.if !defined(NOPORTDOCS)
ALL_TARGET+=	javadocs
.endif

do-install:
	${MKDIR} ${JAVAJARDIR}
	${INSTALL_DATA} ${WRKSRC}/${JARFILE} ${JAVAJARDIR}
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	cd ${WRKSRC}/javadocs && ${COPYTREE_SHARE} \* ${DOCSDIR}
.endif

.include <bsd.port.mk>
