# New ports collection makefile for:	puredb
# Date created:		01 Nov 2002
# Whom:			Sergei Kolobov <sergei@kolobov.com>
#
# $FreeBSD: databases/puredb/Makefile 300896 2012-07-14 13:54:48Z beat $
#

PORTNAME=	puredb
PORTVERSION=	2.1
CATEGORIES=	databases
MASTER_SITES=	http://pureftpd.sourceforge.net/puredb/
DISTNAME=	pure-db-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Set of libraries for creating and reading constant databases

USE_AUTOTOOLS=	libtool
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

DOCS=		AUTHORS FORMAT_DESCR NEWS README

.if !defined(NOPORTDOCS)
post-install:
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
