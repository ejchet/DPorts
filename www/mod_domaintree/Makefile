# New ports collection makefile for:	mod_domaintree
# Date created:				May 5th 2006
# Whom:					Daniel Gerzo <danger@rulez.sk>
#
# $FreeBSD: ports/www/mod_domaintree/Makefile,v 1.9 2012/11/17 06:02:40 svnexp Exp $
#

PORTNAME=	mod_domaintree
PORTVERSION=	1.6
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://dev.iworks.at/mod_domaintree/
EXTRACT_SUFX=	.tgz

MAINTAINER=	danger@FreeBSD.org
COMMENT=	Hostname to filesystem mapper for Apache 2

MAKE_JOBS_SAFE=  yes

WRKSRC=		${WRKDIR}/${PORTNAME}
USE_APACHE=	22+
AP_FAST_BUILD=	yes
AP_GENPLIST=	yes

PORTDOCS=	LICENSE.txt ChangeLog

PLIST_FILES=	share/doc/mod_domaintree/LICENSE.txt \
		share/doc/mod_domaintree/ChangeLog
PLIST_DIRS=	share/doc/mod_domaintree

post-install:
	@${MKDIR} ${DOCSDIR}
	@cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}

.include <bsd.port.mk>
