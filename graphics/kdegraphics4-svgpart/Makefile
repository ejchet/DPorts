# $FreeBSD: graphics/kdegraphics4-svgpart/Makefile 315373 2013-03-27 11:55:25Z makc $

PORTNAME=	svgpart
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	graphics kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
PKGNAMEPREFIX=	kdegraphics-
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	SVG KPart

CONFLICTS=	kdegraphics-4.[0-6].*

USE_KDE4=	kdehier kdelibs kdeprefix automoc4
USES=		cmake:outsource
USE_QT4=	moc_build qmake_build rcc_build uic_build
USE_XZ=		yes
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
