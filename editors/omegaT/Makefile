# Created by: Rodrigo OSORIO <rodrigo@bebik.net>
# $FreeBSD: editors/omegaT/Makefile 318255 2013-05-15 18:51:13Z zeising $

PORTNAME=	omegaT
DISTVERSION=	2.6.3_01
PORTREVISION=	1
CATEGORIES=	editors java x11
MASTER_SITES=	SF/${PORTNAME:tl}/OmegaT%20-%20Standard/OmegaT%202.6.3%20update%201/
DISTNAME=	OmegaT_2.6.3_01_Source
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	rodrigo@bebik.net
COMMENT=	Powerful translation memory application written in Java

LICENSE=	GPLv2

BUILD_DEPENDS=	ant:${PORTSDIR}/devel/apache-ant
RUN_DEPENDS=	java:${PORTSDIR}/java/javavmwrapper

USE_ZIP=	yes
USE_ANT=	yes
USE_JAVA=	yes
JAVA_VENDOR=openjdk
JAVA_VERSION=	1.7+
JAVA_BUILD=	yes
JAVA_RUN=	yes
NO_WRKSUBDIR=	yes
USE_LDCONFIG=	${DATADIR}/native

DATADIR=	${JAVASHAREDIR}/${PORTNAME}
SUB_FILES=	omegaT.sh omegat.prefs

DESKTOP_ENTRIES="OmegaT" "Translation memory application" \
		"${DATADIR}/images/OmegaT.png" \
		"omegaT" "Office;WordProcessor;Java;" \
		false

post-build:
	@cd ${WRKDIR} && ${MV} 'dist' ${PORTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/omegaT.sh ${PREFIX}/bin/${PORTNAME}
	@cd ${WRKDIR} && ${COPYTREE_BIN}  ${PORTNAME}  ${JAVASHAREDIR}/
	${INSTALL_SCRIPT} ${WRKDIR}/omegat.prefs ${JAVASHAREDIR}/${PORTNAME}

.include <bsd.port.mk>
