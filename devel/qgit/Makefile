# New ports collection makefile for:	qgit
# Date created:				2009-04-19
# Whom:				Ion-Mihai "IOnut" Tetcu <itetcu@FreeBSD.org>
#
# $FreeBSD: ports/devel/qgit/Makefile,v 1.9 2012/11/17 05:56:55 svnexp Exp $

PORTNAME=	qgit
PORTVERSION=	2.3
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}4/${PORTVERSION}
PKGNAMESUFFIX=	-qt4

MAINTAINER=	itetcu@FreeBSD.org
COMMENT=	A graphical interface to git repositories

USE_BZIP2=	yes
USE_QT4=	corelib gui moc_build qmake_build rcc_build uic_build
MAKE_JOBS_UNSAFE=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}

PLIST_FILES=	bin/${PORTNAME}

do-configure:
	@cd ${WRKSRC} && ${QMAKE} ${PORTNAME}.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
