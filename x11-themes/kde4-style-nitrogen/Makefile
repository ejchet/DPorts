# New ports collection makefile for:   nitrogen
# Date created:                        Thu Dec  3 04:21:05  EST 2009
# Whom:                                Steve Wills <steve@mouf.net>
#
# $FreeBSD: x11-themes/kde4-style-nitrogen/Makefile 314960 2013-03-22 20:06:14Z makc $
#

PORTNAME=	nitrogen
PORTVERSION=	1.0.5
PORTREVISION=	4
CATEGORIES=	x11-themes kde
MASTER_SITES=	http://www.kde-look.org/CONTENT/content-files/
PKGNAMEPREFIX=	kde4-style-
DISTFILES=	112652-kde4-kstyle-nitrogen-${PORTVERSION}-Source.tar.gz

MAINTAINER=	swills@FreeBSD.org
COMMENT=	KDE style with animations

WRKSRC=		${WRKDIR}/kde4-kstyle-nitrogen-${PORTVERSION}-Source
USE_KDE4=	kdelibs kdehier kdeprefix automoc4
USE_QT4=	corelib qmake_build moc_build rcc_build uic_build
USES=		cmake

.include <bsd.port.mk>
