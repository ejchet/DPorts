# New ports collection makefile for:	kcoloredit
# Date created:		2008-09-01
# Whom:			Max Brazhnikov <makc@FreeBSD.org>
#
# $FreeBSD: graphics/kcoloredit/Makefile 314960 2013-03-22 20:06:14Z makc $
#

PORTNAME=	kcoloredit
PORTVERSION=	${APP_VER}.${EXTRA_VER}
PORTREVISION=	2
CATEGORIES=	graphics kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/extragear
DISTNAME=	${PORTNAME}-${APP_VER}-kde${EXTRA_VER}
DIST_SUBDIR=	KDE/extragear

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Palette files editor for KDE

USE_BZIP2=	yes
USE_KDE4=	kdelibs kdeprefix kdehier automoc4
USE_QT4=	corelib qmake_build moc_build rcc_build uic_build
USES=		cmake
MAKE_JOBS_SAFE=	yes

APP_VER=	2.0.0
EXTRA_VER=	4.4.0

.include <bsd.port.mk>
