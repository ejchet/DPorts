# New ports collection makefile for:	it-mythes
# Date created:		2011-07-21
# Whom:			Baptiste Daroussin <bapt@FreeBSD.org>
#
# $FreeBSD: ports/textproc/it-mythes/Makefile,v 1.5 2012/11/17 06:02:00 svnexp Exp $
#

PORTNAME=	mythes
DISTVERSION=	02_09_l
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	SF/linguistico/Thesaurus%20OOo%202.x.x/${DISTVERSION}_2008_11_29/
PKGNAMEPREFIX=	it-
DISTNAME=	thesaurus2_it_${DISTVERSION}_2008_11_29
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Italian thesaurus

USE_ZIP=	yes
NO_BUILD=	yes
NO_WRKSUBDIR=	yes

PLIST_FILES=	%%DATADIR%%/th_it_IT.dat \
		%%DATADIR%%/th_it_IT.idx
PLIST_DIRSTRY=	%%DATADIR%%

do-install:
	${MKDIR} ${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/th_it_IT.dat ${WRKSRC}/th_it_IT.idx ${DATADIR}/

.include <bsd.port.mk>
