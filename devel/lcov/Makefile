# New ports collection makefile for:	lcov
# Date created:		2010-02-11
# Whom:			Romain Tartiere <romain@FreeBSD.org>
#
# $FreeBSD: ports/devel/lcov/Makefile,v 1.4 2012/11/17 05:55:52 svnexp Exp $
#

PORTNAME=	lcov
PORTVERSION=	1.10
CATEGORIES=	devel
MASTER_SITES=	SF
MASTER_SITE_SUBDIR=ltp/Coverage%20Analysis/LCOV-${PORTVERSION}

MAINTAINER=	romain@FreeBSD.org
COMMENT=	The Linux Test Project GCOV extension

LICENSE=	GPLv1

RUN_DEPENDS=	bash:${PORTSDIR}/shells/bash

NO_BUILD=	yes
USE_PERL5_RUN=	yes

PLIST_FILES=	bin/lcov bin/gendesc bin/genhtml bin/genpng bin/geninfo
MAN1=		gendesc.1 genhtml.1 geninfo.1 genpng.1 lcov.1
MAN5=		lcovrc.5

do-install:
	cd ${WRKSRC}/bin && ${COPYTREE_BIN} "gendesc genhtml geninfo genpng lcov" ${PREFIX}/bin
	cd ${WRKSRC}/man && ${INSTALL_MAN} *.1 ${MANPREFIX}/man/man1
	cd ${WRKSRC}/man && ${INSTALL_MAN} *.5 ${MANPREFIX}/man/man5

.include <bsd.port.mk>
