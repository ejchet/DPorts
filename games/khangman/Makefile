# $FreeBSD: games/khangman/Makefile 315373 2013-03-27 11:55:25Z makc $

PORTNAME=	khangman
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Hangman game for KDE 4

CONFLICTS=	kdeedu-4.[0-6].*

USE_KDE4=	kdehier kdelibs kdeprefix libkdeedu automoc4
USES=		cmake:outsource
USE_QT4=	corelib declarative gui opengl script xml \
		moc_build qmake_build rcc_build uic_build
USE_XZ=		yes
USE_LDCONFIG=	yes
MAKE_JOBS_SAFE=	yes

MAN6=		khangman.6

.include <bsd.port.mk>
