# Created by: decept
# $FreeBSD: x11-themes/kde4-windeco-crystal/Makefile 323455 2013-07-22 14:34:22Z vg $

PORTNAME=	crystal
PORTVERSION=	2.2.1
CATEGORIES=	x11-themes kde
MASTER_SITES=	http://www.kde-look.org/CONTENT/content-files/
PKGNAMEPREFIX=	kde-windeco-
DISTNAME=	75140-${PORTNAME}-${PORTVERSION}

MAINTAINER=	vg@FreeBSD.org
COMMENT=	Transparent KDE window decoration

LICENSE=	GPLv2

USE_BZIP2=	yes
USE_KDE4=	kdelibs kdehier kdeprefix automoc4 workspace
USE_QT4=	qmake_build moc_build rcc_build uic_build \
		corelib gui qt3support
USES=		cmake:outsource
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

.include <bsd.port.mk>
