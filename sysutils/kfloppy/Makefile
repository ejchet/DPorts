# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: sysutils/kfloppy/Makefile 315373 2013-03-27 11:55:25Z makc $

PORTNAME=	kfloppy
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	sysutils kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Floppy disk formatter for KDE

CONFLICTS_INSTALL=	kdeutils-4.[0-7].*

LATEST_LINK=	${PORTNAME}-kde4

USE_XZ=		yes
USE_KDE4=	kdeprefix kdehier automoc4 kdelibs
USES=		cmake:outsource
USE_QT4=	qmake_build moc_build rcc_build uic_build
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
