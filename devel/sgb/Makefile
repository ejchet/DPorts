# New ports collection makefile for:    sgb
# Date created:         2003-02-05
# Whom:			Gerald Pfeifer <gerald@freebsd.org>
#
# $FreeBSD: ports/devel/sgb/Makefile,v 1.15 2012/11/17 05:57:02 svnexp Exp $
#

PORTNAME=	sgb
PORTVERSION=	20090810
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.cs.stanford.edu/pub/sgb/ \
		${MASTER_SITE_GENTOO}
MASTER_SITE_SUBDIR=	distfiles
DISTNAME=	sgb-2009-08-10

MAINTAINER=	gerald@FreeBSD.org
COMMENT=	The Stanford GraphBase: A Platform for Combinatorial Computing

BUILD_DEPENDS=	ctangle:${PORTSDIR}/devel/cweb

NO_WRKSUBDIR=	yes
ALL_TARGET=	lib tests
MAKE_JOBS_UNSAFE=	yes

.include <bsd.port.pre.mk>

post-extract:
	${CP} ${WRKSRC}/PROTOTYPES/* ${WRKSRC}

.include <bsd.port.post.mk>
