# $FreeBSD: misc/ktouch/Makefile 315373 2013-03-27 11:55:25Z makc $

PORTNAME=	ktouch
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	misc kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Touch typing tutor for KDE 4

CONFLICTS=	kdeedu-4.[0-6].*

USE_KDE4=	kdehier kdelibs kdeprefix automoc4
USES=		cmake:outsource
USE_QT4=	corelib declarative opengl phonon script sql xmlpatterns \
		moc_build qmake_build rcc_build uic_build
USE_XZ=		yes
USE_XORG=	xkbfile
MAKE_JOBS_SAFE=	yes

MAN1=		ktouch.1

.include <bsd.port.mk>
