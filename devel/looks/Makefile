# Created by: Thierry Thomas <thierry@pompo.net>
# $FreeBSD: devel/looks/Makefile 318410 2013-05-17 22:06:14Z erwin $

PORTNAME=	looks
PORTVERSION=	2.5.2
PORTREVISION=	1
CATEGORIES=	devel java
MASTER_SITES=	http://www.jgoodies.com/download/libraries/${PORTNAME}/
DISTNAME=	jgoodies-${PORTNAME}-${PORTVERSION:S|.|_|g}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	JGoodies Looks improve the appearance of your Java applications

LICENSE=	BSD

USE_ZIP=	yes
USE_JAVA=	yes
JAVA_VERSION=	1.6+
NO_BUILD=	yes

WRKSRC=		${WRKDIR}/jgoodies-${PORTNAME}-${PORTVERSION}

JARFILE=	jgoodies-${PORTNAME}-${PORTVERSION}.jar

PLIST_FILES=	%%JAVAJARDIR%%/${JARFILE} \
		%%JAVAJARDIR%%/looks.jar
DOCFILES=	README.html RELEASE-NOTES.txt
PORTDOCS=	*

.include <bsd.port.options.mk>

do-install:
	${INSTALL_DATA} ${WRKSRC}/${JARFILE} ${JAVAJARDIR}
	${LN} -s ${JAVAJARDIR}/${JARFILE} ${JAVAJARDIR}/looks.jar
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${DOCFILES:S|^|${WRKSRC}/|} ${DOCSDIR}
	@(cd ${WRKSRC}/docs/ && ${COPYTREE_SHARE} \* ${DOCSDIR})
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
.endif

.include <bsd.port.mk>
