# Created by: Anton Yudin <toha@toha.org.ua>
# $FreeBSD: ports/java/jakarta-commons-pool/Makefile,v 1.19 2012/12/10 13:24:58 svnexp Exp $

PORTNAME=	commons-pool
PORTVERSION=	1.6
CATEGORIES=	java devel
MASTER_SITES=	${MASTER_SITE_APACHE_COMMONS_SOURCE}
MASTER_SITE_SUBDIR=	${PORTNAME:S,commons-,,}
PKGNAMEPREFIX=	jakarta-
DISTNAME=	${PORTNAME}-${PORTVERSION}-src

MAINTAINER=	ale@FreeBSD.org
COMMENT=	Jakarta Object-pooling API

USE_JAVA=	yes
JAVA_VERSION=	1.6+

USE_ANT=	yes
ALL_TARGET=	build-jar
.if !defined(NOPORTDOCS)
ALL_TARGET+=	javadoc
.endif

PORTDOCS=	*

PLIST_FILES=	%%JAVAJARDIR%%/${PORTNAME}.jar

do-install:
	@${ECHO_MSG} -n ">> Installing JAR as ${JAVAJARDIR}/${PORTNAME}.jar..."
	@${INSTALL_DATA} ${WRKSRC}/dist/${PORTNAME}-${PORTVERSION}.jar \
		${JAVAJARDIR}/${PORTNAME}.jar
	@${ECHO_MSG} " [ DONE ]"
.if !defined(NOPORTDOCS)
	@${ECHO_MSG} -n ">> Installing documentation in ${DOCSDIR}..."
	@${MKDIR} ${DOCSDIR}
	@cd ${WRKSRC}/dist/docs && ${FIND} api \
		| ${CPIO} -pdmu -R ${SHAREOWN}:${SHAREGRP} ${DOCSDIR} > /dev/null 2>&1
	@${ECHO_MSG} " [ DONE ]"
.endif

.include <bsd.port.mk>
