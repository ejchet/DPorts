# Created by: Jason Bacon <jwbacon@tds.net>
# $FreeBSD: ports/biology/plink/Makefile,v 1.2 2012/11/17 05:54:52 svnexp Exp $

PORTNAME=	plink
PORTVERSION=	1.07
CATEGORIES=	biology science
MASTER_SITES=	http://pngu.mgh.harvard.edu/~purcell/plink/dist/
DISTNAME=	${PORTNAME}-${PORTVERSION}-src

MAINTAINER=	jwbacon@tds.net
COMMENT=	Whole genome association analysis toolset

LICENSE=	GPLv2

LIB_DEPENDS=	lapack:${PORTSDIR}/math/lapack

USE_ZIP=	yes
USE_GMAKE=	yes
USE_FORTRAN=	yes	# Make it use the same compiler as lapack

PLIST_FILES=	bin/plink

do-install:
	${MKDIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/plink ${PREFIX}/bin

.include <bsd.port.mk>
