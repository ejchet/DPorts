# New ports collection makefile for:	cs-mythes
# Date created:		2011-07-21
# Whom:			Baptiste Daroussin <bapt@FreeBSD.org>
#
# $FreeBSD: ports/textproc/cs-mythes/Makefile,v 1.6 2012/11/17 06:01:53 svnexp Exp $
#

PORTNAME=	mythes
PORTVERSION=	2007.09.26
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	LOCAL/sunpoet/${PORTNAME}/
PKGNAMEPREFIX=	cs-
DISTNAME=	thes_cs_CZ_v2-${PORTVERSION:C/\.//g}
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Czech thesaurus

LICENSE=	BSD

USE_ZIP=	yes
NO_BUILD=	yes
NO_WRKSUBDIR=	yes

PLIST_FILES=	%%DATADIR%%/th_cs_CZ_v2.dat \
		%%DATADIR%%/th_cs_CZ_v2.idx
PLIST_DIRSTRY=	%%DATADIR%%

do-install:
	${MKDIR} ${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/th_cs_CZ_v2.dat ${WRKSRC}/th_cs_CZ_v2.idx ${DATADIR}/

.include <bsd.port.mk>
