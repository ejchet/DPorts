# New ports collection makefile for: trac-wikinotification
# Date created:                      December 28 2006
# Whom:                              Gerrit Beine <gerrit.beine@gmx.de>
#
# $FreeBSD: ports/www/trac-wikinotification/Makefile,v 1.15 2012/11/17 06:03:08 svnexp Exp $
#

PORTNAME=	wikinotificationplugin
PORTVERSION=	0.2.1
PORTREVISION=	4
CATEGORIES=	www devel python
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	brooks
PKGNAMEPREFIX=	trac-
DISTNAME=	${PORTNAME}-${PORTVERSION:S/p/rc/}

MAINTAINER=	glarkin@FreeBSD.org
COMMENT=	Allow email notifications on wiki page changes

RUN_DEPENDS+=	tracd:${PORTSDIR}/www/trac

WRKSRC=		${WRKDIR}/${PORTNAME}
USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install
PYDISTUTILS_PKGNAME=	TracWikiNotification
PYDISTUTILS_PKGVERSION=	${PORTVERSION:S/p/rc/}

.include <bsd.port.mk>
