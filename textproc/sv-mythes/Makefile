# New ports collection makefile for:	sv-mythes
# Date created:		2011-07-21
# Whom:			Baptiste Daroussin <bapt@FreeBSD.org>
#
# $FreeBSD: ports/textproc/sv-mythes/Makefile,v 1.6 2012/11/17 06:02:22 svnexp Exp $
#

PORTNAME=	mythes
PORTVERSION=	2008.06.10
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	LOCAL/sunpoet/${PORTNAME}/
PKGNAMEPREFIX=	sv-
DISTNAME=	thes_sv_SE_v2-${PORTVERSION:C/\.//g}
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Swedish thesaurus

LICENSE=	MIT

USE_ZIP=	yes
NO_BUILD=	yes
NO_WRKSUBDIR=	yes

PLIST_FILES=	%%DATADIR%%/th_sv_SE.dat \
		%%DATADIR%%/th_sv_SE.idx \
		%%DATADIR%%/th_sv_FI.dat \
		%%DATADIR%%/th_sv_FI.idx
PLIST_DIRSTRY=	%%DATADIR%%

do-install:
	${MKDIR} ${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/th_sv_SE.dat ${WRKSRC}/th_sv_SE.idx ${DATADIR}/
	${LN} -s th_sv_SE.dat ${DATADIR}/th_sv_FI.dat
	${LN} -s th_sv_SE.idx ${DATADIR}/th_sv_FI.idx

.include <bsd.port.mk>
