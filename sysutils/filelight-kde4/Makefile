# Created by: Rusty Nejdl <rnejdl@ringofsaturn.com>
# $FreeBSD: sysutils/filelight-kde4/Makefile 315373 2013-03-27 11:55:25Z makc $

PORTNAME=	filelight
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	sysutils kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Map of concentric segmented-rings representing your file system

LATEST_LINK=	${PORTNAME}-kde4

CONFLICTS=	kdeutils-4.6.*

USE_KDE4=	kdehier kdelibs kdeprefix automoc4
USES=		cmake:outsource
USE_QT4=	qmake_build moc_build rcc_build uic_build
USE_XZ=		yes
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
