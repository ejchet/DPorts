# New ports collection makefile for:	webtrees
# Date created:				2010 December 13
# Whom:					J.R. Oldroyd <fbsd@opal.com>
#
# $FreeBSD: ports/www/webtrees/Makefile,v 1.2 2012/11/17 06:03:11 svnexp Exp $
#

PORTNAME=	webtrees
PORTVERSION=	1.0.6
CATEGORIES=	www
MASTER_SITES=	http://launchpad.net/${PORTNAME}/${PORTVERSION:C/\.[0-9]*$//}/${PORTVERSION}/+download/

MAINTAINER=	fbsd@opal.com
COMMENT=	Online genealogy viewer

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}
EXTRACT_AFTER_ARGS=	-d ${WRKSRC}
FETCH_ARGS=	-pRr

USE_ZIP=	yes
USE_PHP=	calendar dom gd pcre session xml pdo_mysql
NO_BUILD=	yes

SUB_FILES=	pkg-message pkg-deinstall

.include <bsd.port.pre.mk>

post-extract:
	@# remove files with mis-encoded filenames; these have been dropepd from
	@# the project's svn and will no longer be present in the 1.0.7 version
	@${RM} ${WRKSRC}/${PORTNAME}/places/ISR/ISR_+*

do-install:
	@cd ${WRKSRC}/${PORTNAME} && ${COPYTREE_SHARE} . ${WWWDIR}
	@${CHOWN} -R ${WWWOWN}:${WWWGRP} ${WWWDIR}/data ${WWWDIR}/media
	@${CHMOD} -R u+w ${WWWDIR}/data ${WWWDIR}/media
	@${ECHO_CMD} '@exec ${CHOWN} -R ${WWWOWN}:${WWWGRP} ${WWWDIR}/data ${WWWDIR}/media' >>${TMPPLIST}
	@${ECHO_CMD} '@exec ${CHMOD} -R u+w ${WWWDIR}/data ${WWWDIR}/media' >>${TMPPLIST}

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
