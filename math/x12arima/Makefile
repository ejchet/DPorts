# New ports collection makefile for: 	x12arima
# Date created:				22 June 2010
# Whom:					jh@jameshoward.us
#
# $FreeBSD: ports/math/x12arima/Makefile,v 1.2 2012/11/17 05:59:32 svnexp Exp $

PORTNAME=	x12arima
PORTVERSION=	0.3
CATEGORIES=	math finance
MASTER_SITES=	http://www.census.gov/ts/x12a/v03/unix/
DISTFILES=	omegav03src.tar.gz
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	jh@jameshoward.us
COMMENT=	X-12-ARIMA seasonal adjustment program

USE_FORTRAN=	yes
NO_WRKSUBDIR=	yes
MAKEFILE=	makefile.lnx

PLIST_FILES=	bin/x12a

.ifndef(NOPORTDOCS) || make(makesum)
DISTFILES+=	docsv03.tar.gz
.endif

.ifndef(NOPORTDOCS)
PORTDOCS=	ReleaseNotesVersion03.pdf qref03unix.pdf x12adocV03.pdf

post-install:
	@${MKDIR} ${DOCSDIR}
	@(cd ${WRKSRC}/docs && ${INSTALL_MAN} ${PORTDOCS} ${DOCSDIR})

.endif
.include <bsd.port.mk>
