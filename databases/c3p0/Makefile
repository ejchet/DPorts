# $FreeBSD: ports/databases/c3p0/Makefile,v 1.5 2013/02/09 17:49:19 svnexp Exp $

PORTNAME=	c3p0
PORTVERSION=	0.9.2
CATEGORIES=	databases java
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}-bin/${PORTNAME}-${PORTVERSION}/
DISTNAME=	${PORTNAME}-${PORTVERSION}.bin
EXTRACT_SUFX=	.tgz

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	A library for augmenting JDBC drivers with JNDI-bindable DataSources

USE_JAVA=	yes
NO_BUILD=	yes
JAVA_VERSION=	1.6+
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

do-install:
	@${INSTALL_DATA} ${WRKSRC}/lib/${PORTNAME}-${PORTVERSION}.jar ${JAVAJARDIR}/${PORTNAME}.jar
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@cd ${WRKSRC}/doc && ${COPYTREE_SHARE} apidocs ${DOCSDIR}
	@cd ${WRKSRC}/doc && ${COPYTREE_SHARE} apidocs-oracle-thin ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/doc/arrow_sm.png ${WRKSRC}/doc/index.html ${DOCSDIR}
.endif

.include <bsd.port.mk>
