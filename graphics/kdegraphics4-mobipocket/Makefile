# $FreeBSD: graphics/kdegraphics4-mobipocket/Makefile 315373 2013-03-27 11:55:25Z makc $

PORTNAME=	kdegraphics-mobipocket
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	graphics kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Mobipocket plugins for Strigi indexing, Okular and thumbnails

CONFLICTS=	kdegraphics-4.[0-6].*

USE_KDE4=	kdehier kdelibs kdeprefix okular automoc4 strigi
USES=		cmake:outsource
USE_QT4=	corelib gui qmake_build moc_build uic_build rcc_build
USE_XZ=		yes
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
