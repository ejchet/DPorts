# New ports collection makefile for:	kio-upnp-ms
# Date created:				2010-12-29
# Whom:					Dima Panov <fluffy@FreeBSD.org>
#
# $FreeBSD: net/kio-upnp-ms/Makefile 314960 2013-03-22 20:06:14Z makc $

PORTNAME=	kio-upnp-ms
DISTVERSION=	1.0.0.git20110808
PORTREVISION=	2
CATEGORIES=	net devel
#MASTER_SITES=	${MASTER_SITE_KDE}
#MASTER_SITE_SUBDIR=	stable/${PORTNAME}/${PORTVERSION}/src
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	fluffy


MAINTAINER=	kde@FreeBSD.org
COMMENT=	KIO slave to access UPnP MediaServers

LIB_DEPENDS=	HUpnp.1:${PORTSDIR}/net/hupnp

USE_BZIP2=	yes
USES=		cmake
USE_KDE4=	automoc4 kdehier kdeprefix kdelibs
USE_QT4=	corelib network xml dbus gui \
		qmake_build moc_build rcc_build uic_build

WRKSRC=		${WRKDIR}/${DISTNAME:C/.[^.]*$//}

PLIST_FILES=	include/kio/upnp-ms-types.h \
		lib/kde4/kio_upnp_ms.so \
		share/kde4/services/kio_upnp_ms.protocol

.include <bsd.port.mk>
