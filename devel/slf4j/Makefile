# New ports collection makefile for:	slf4j
# Date created:		2009-10-13
# Whom:			Steven Kreuzer <skreuzer@FreeBSD.org>
#
# $FreeBSD: ports/devel/slf4j/Makefile,v 1.5 2012/11/17 05:57:03 svnexp Exp $
#

PORTNAME=	slf4j
PORTVERSION=	1.6.6
CATEGORIES=	devel java
MASTER_SITES=	http://www.slf4j.org/dist/

MAINTAINER=	skreuzer@FreeBSD.org
COMMENT=	Simple facade or abstraction for various logging frameworks

USE_JAVA=	1.4+
NO_BUILD=	YES

JARFILES=	slf4j-migrator.jar \
		slf4j-simple.jar \
		jcl-over-slf4j.jar \
		log4j-over-slf4j.jar \
		slf4j-ext.jar \
		slf4j-jdk14.jar \
		slf4j-nop.jar \
		jul-to-slf4j.jar \
		slf4j-jcl.jar \
		slf4j-log4j12.jar


PLIST_FILES=	%%JAVAJARDIR%%/slf4j-api.jar \
		${JARFILES:S,^,%%DATADIR%%/,}
PLIST_DIRS=	%%DATADIR%%

do-install:
	@${INSTALL_DATA} ${WRKSRC}/slf4j-api-${PORTVERSION}.jar ${JAVAJARDIR}/slf4j-api.jar
	@${MKDIR} ${DATADIR}
.for jarfile in ${JARFILES}
	@${INSTALL_DATA} ${WRKSRC}/${jarfile:S,.jar$,-${PORTVERSION}.jar,} ${DATADIR}/${jarfile}
.endfor

.include <bsd.port.mk>
