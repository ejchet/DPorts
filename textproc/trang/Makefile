# Created by: Kimura Fuyuki <fuyuki@nigredo.org>
# $FreeBSD: textproc/trang/Makefile 321887 2013-06-27 12:51:07Z wg $

PORTNAME=	trang
PORTVERSION=	2009.11.11
CATEGORIES=	textproc java
MASTER_SITES=	http://jing-trang.googlecode.com/files/
DISTNAME=	${PORTNAME}-${PORTVERSION:S/.//g}

MAINTAINER=	gabor@FreeBSD.org
COMMENT=	Multi-format schema converter based on RELAX NG

USE_ZIP=	yes
USE_JAVA=	yes
JAVA_VERSION=	1.6+
NO_BUILD=	yes

OPTIONS_DEFINE=	DOCS

PORTDOCS=	copying.txt trang-manual.html

SUB_FILES=	trang.sh
PLIST_FILES=	%%JAVAJARDIR%%/trang.jar bin/trang

.include <bsd.port.options.mk>

do-install:
	${INSTALL_DATA} ${WRKSRC}/trang.jar ${JAVAJARDIR}
	${INSTALL_SCRIPT} ${WRKDIR}/trang.sh ${PREFIX}/bin/trang
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}
.endif

.include <bsd.port.mk>
