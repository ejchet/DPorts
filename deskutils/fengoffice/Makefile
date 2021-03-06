# New ports collection makefile for:	opengoo
# Date created:		2009-08-19
# Whom:			Jose Alonso Cardenas Marquez <acm@FreeBSD.org>
#
# $FreeBSD: ports/deskutils/fengoffice/Makefile,v 1.5 2012/11/17 05:55:27 svnexp Exp $
#

PORTNAME=	fengoffice
PORTVERSION=	2.0.0
CATEGORIES=	deskutils
MASTER_SITES=	SF/opengoo/${PORTNAME}/${PORTNAME}_${PORTVERSION}
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	acm@FreeBSD.org
COMMENT=	An open source web-based collaboration software

USE_ZIP=	yes
NO_BUILD=	yes
USE_PHP=	mysql gd simplexml
DEFAULT_PHP_VER=5
IGNORE_WITH_PHP=4
WANT_PHP_WEB=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}
PLIST=		${WRKDIR}/pkg-plist
SUB_FILES=	pkg-message

FENGOFFICE_DIR=		www/${PORTNAME}
FENGOFFICE_WWWDIR=	${PREFIX}/${FENGOFFICE_DIR}

post-extract:
	@${MKDIR} ${WRKDIR}/${PORTNAME}-docs
	@${MV} ${WRKSRC}/readme.txt ${WRKDIR}/${PORTNAME}-docs/README

pre-install:
	@${RM} -f ${PLIST}

	@cd ${WRKSRC} && \
		${FIND} . -type f | ${SORT} | ${SED} -e 's|^|www/fengoffice/|' -e 's|\./||g' >> ${PLIST} && \
			${FIND} . -type d | ${SORT} -r | ${SED} -e 's|^|@dirrm www/fengoffice|' -e 's|\.||g' >> ${PLIST}

.	if !defined(NOPORTDOCS)
		@${ECHO_CMD} "%%PORTDOCS%%%%DOCSDIR%%/README" >> ${PLIST}
		@${ECHO_CMD} "%%PORTDOCS%%@dirrm %%DOCSDIR%%" >> ${PLIST}
.	endif

do-install:
	@${MKDIR} ${FENGOFFICE_WWWDIR}
	@cd ${WRKSRC} && ${COPYTREE_SHARE} . ${FENGOFFICE_WWWDIR}
	@${CHOWN} -R ${WWWOWN}:${WWWGRP} ${FENGOFFICE_WWWDIR}
.if !defined (NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKDIR}/${PORTNAME}-docs/README ${DOCSDIR}
.endif

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
