# Created by: jon@witchspace.com
# $FreeBSD: ports/sysutils/jdiskreport/Makefile,v 1.16 2013/01/23 15:05:38 svnexp Exp $

PORTNAME=	jdiskreport
PORTVERSION=	1.4.0
PORTREVISION=	1
CATEGORIES=	sysutils java
MASTER_SITES=	http://www.jGoodies.com/download/${PORTNAME}/
DISTNAME=	${PORTNAME}-${PORTVERSION:S,.,_,g}

MAINTAINER=	jon@witchspace.com
COMMENT=	Java program to graphically display disk usage statistics

RUN_DEPENDS=	${JAVAVM}:${PORTSDIR}/java/javavmwrapper

USE_ZIP=	YES
USE_JAVA=	YES
JAVA_VERSION=	1.6+

PLIST_SUB=	JDISKDIR=${JDISKDIR:S,${PREFIX}/,,g}
PLIST_SUB+=	PORTVERSION=${PORTVERSION}
JAVAVM?=	${LOCALBASE}/bin/java
JDISKDIR?=	${PREFIX}/lib/jdiskreport

DESKTOP_ENTRIES="JDiskReport" "${COMMENT}" "" "jdiskreport" \
		"System;Filesystem;" "false"

do-build:
	@cd ${WRKDIR}
	@${SED} -e 's,%%JDISKDIR%%,${JDISKDIR},g' \
		-e 's,%%PORTVERSION%%,${PORTVERSION},g' \
		-e 's,%%JAVAVM%%,${JAVAVM},g' ${FILESDIR}/jdiskreport.sh \
		> ${WRKDIR}/jdiskreport

do-install:
	@${INSTALL_SCRIPT} ${WRKDIR}/jdiskreport ${PREFIX}/bin
	-@${MKDIR} ${JDISKDIR}
	@${INSTALL_DATA} ${WRKDIR}/${PORTNAME}-${PORTVERSION}/jdiskreport-${PORTVERSION}.jar ${JDISKDIR}

.include <bsd.port.mk>
