# New ports collection makefile for:	yi-hunspell
# Date created:		2011-07-20
# Whom:			Baptiste Daroussin <bapt@FreeBSD.org>
#
# $FreeBSD: ports/textproc/yi-hunspell/Makefile,v 1.5 2012/11/17 06:02:26 svnexp Exp $
#

PORTNAME=	hunspell
PORTVERSION=	0.0.2
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_MOZILLA_EXTENDED}
MASTER_SITE_SUBDIR=	addons/222538
PKGNAMEPREFIX=	yi-
DISTNAME=	yiddish_spell_checker__yivo_-${PORTVERSION}-fx+tb+sm+fn
EXTRACT_SUFX=	.xpi
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Yiddish hunspell dictionaries

USE_ZIP=	yes
NO_BUILD=	yes
WRKSRC=		${WRKDIR}/dictionaries

PLIST_FILES=	%%DATADIR%%/yi.aff \
		%%DATADIR%%/yi.dic
PLIST_DIRSTRY=	%%DATADIR%%

do-install:
	${MKDIR} ${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/yi.aff ${WRKSRC}/yi.dic ${DATADIR}/

.include <bsd.port.mk>
