# New ports collection makefile for:	rvi
# Date Created:				2 July 2001
# Whom:					Pete Fritchman <petef@databits.net>
#
# $FreeBSD: ports/devel/rvi/Makefile,v 1.12 2012/11/17 05:57:02 svnexp Exp $
#

PORTNAME=	rvi
PORTVERSION=	1.0.0
CATEGORIES=	devel
MASTER_SITES=	LOCAL/petef \
		http://www.cs.ru.ac.za/research/g98t4414/static/home/rvi/
DISTNAME=	rvi

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A simple interface to RCS

WRKSRC=	${WRKDIR}/${PORTNAME}-${PORTVERSION}
PLIST_FILES=	bin/rvi
PORTDOCS=	rvi.txt

do-build:
	@cd ${WRKSRC}/&&${CXX} -I. ${CFLAGS} -o rvi src/rvi.cc

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/rvi ${PREFIX}/bin/
.ifndef NOPORTDOCS
	@${INSTALL} -d ${DOCSDIR}/
	@cd ${WRKSRC}/doc/&&${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}/
.endif

.include <bsd.port.mk>
