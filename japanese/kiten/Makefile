# $FreeBSD: japanese/kiten/Makefile 315373 2013-03-27 11:55:25Z makc $

PORTNAME=	kiten
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	japanese kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Japanese reference/study tool for KDE 4

CONFLICTS=	kdeedu-4.[0-6].*

USE_KDE4=	kdehier kdelibs kdeprefix automoc4
USES=		cmake:outsource
USE_QT4=	corelib moc_build qmake_build rcc_build uic_build
USE_XZ=		yes
USE_LDCONFIG=	yes
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
