# New ports collection makefile for:  kicad-library
# Date created:               22 May 2010
# Whom:                       Thierry Thomas <thierry@FreeBSD.org>
#
# $FreeBSD: ports/cad/kicad-library/Makefile,v 1.3 2012/11/17 05:54:54 svnexp Exp $
#

PORTNAME=	kicad
PORTVERSION=	1.0
CATEGORIES=	cad
MASTER_SITES=	${MASTER_SITE_LOCAL}	\
		SF/${PORTNAME}/${PORTNAME}${PKGNAMESUFFIX}/${PORTVERSION}
MASTER_SITE_SUBDIR=	thierry/${PORTNAME}
PKGNAMESUFFIX=	-library
DISTNAME=	${PORTNAME}${PKGNAMESUFFIX}-${PORTVERSION}
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Library modules for Kicad EDA

CONFLICTS=	kicad-devel*

USE_BZIP2=	yes
NO_BUILD=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}${PKGNAMESUFFIX}

do-install:
	${MKDIR} ${DATADIR}
	(cd ${WRKSRC} && ${COPYTREE_SHARE} \* ${DATADIR})
	${FIND} ${DATADIR} -name CMakeLists.txt -delete	\
		-o -name makefile -delete

.include <bsd.port.mk>
