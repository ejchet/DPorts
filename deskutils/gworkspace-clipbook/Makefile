# $FreeBSD: ports/deskutils/gworkspace-clipbook/Makefile,v 1.12 2012/11/17 05:55:28 svnexp Exp $

PORTNAME=	gworkspace
PORTVERSION=	0.8.3
PORTREVISION=	2
CATEGORIES=	deskutils gnustep
MASTER_SITES=	http://debian.uni-duisburg-essen.de/misc/GNUstep/Apps/GWorkspace/
PKGNAMESUFFIX=	-clipbook${PKGNAMESUFFIX2}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	ClipBook for GNUstep workspace manager

LICENSE=	GPLv2

USE_GNUSTEP=	yes
USE_GNUSTEP_BACK=	yes
USE_GNUSTEP_BUILD=	yes
USE_GNUSTEP_INSTALL=	yes

WRKSRC=		${WRKDIR}/GWorkspace-${PORTVERSION}/ClipBook
MAKE_ENV+=	GNUSTEP_INSTALLATION_DOMAIN=SYSTEM

.include <bsd.port.mk>
