# New ports collection makefile for:   jinput
# Date created:                        Mar 25 2012
# Whom:                                loader <loader@freebsdmall.com>
#
# $FreeBSD: games/jinput/Makefile 313987 2013-03-12 17:16:37Z sunpoet $
#

PORTNAME=	jinput
DISTVERSION=	20110801.r247
CATEGORIES=	games java
MASTER_SITES=	LOCAL/loader

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Java Game Controller API

BUILD_DEPENDS=	${JAVALIBDIR}/jutils/jutils.jar:${PORTSDIR}/games/jutils
RUN_DEPENDS=	${JAVALIBDIR}/jutils/jutils.jar:${PORTSDIR}/games/jutils

USE_BZIP2=	yes
USE_JAVA=	yes
JAVA_VERSION=	1.6+
JAVA_OS=	native
JAVA_VENDOR=	openjdk
USE_ANT=	yes
ALL_TARGET=	simple_linux

PLIST_FILES=	%%JAVAJARDIR%%/${PORTNAME}/${PORTNAME}.jar
PLIST_DIRS=	%%JAVAJARDIR%%/${PORTNAME}

post-patch:
	@${LN} -sf ${JAVALIBDIR}/jutils/jutils.jar ${WRKSRC}/lib/

do-install:
	@${ECHO_MSG} -n ">> Install JAR files in ${JAVAJARDIR}/${PORTNAME}/ ..."
	@${MKDIR} ${JAVAJARDIR}/${PORTNAME}
	@${INSTALL_DATA} ${WRKSRC}/dist/${PORTNAME}.jar \
		${JAVAJARDIR}/${PORTNAME}/
	@${ECHO_MSG} " [ DONE ]"

.include <bsd.port.mk>
