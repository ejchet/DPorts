# New ports collection makefile for:	aqemu
# Date created:		2008-09-03
# Whom:			Max Brazhnikov <makc@FreeBSD.org>
#
# $FreeBSD: emulators/aqemu/Makefile 314960 2013-03-22 20:06:14Z makc $
#

PORTNAME=	aqemu
PORTVERSION=	0.8.1
PORTREVISION=	1
CATEGORIES=	emulators
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTVERSION:S,.0$,,}/

MAINTAINER=	makc@FreeBSD.org
COMMENT=	Qt4 based Qemu frontend

LIB_DEPENDS=	vncclient.0:${PORTSDIR}/net/libvncserver

USE_BZIP2=	yes
USE_QT4=	gui qtestlib xml qmake_build uic_build moc_build rcc_build \
		linguist_build
USES=		cmake
MAKE_JOBS_SAFE=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION:S,.0$,,}

MAN1=		aqemu.1

.include <bsd.port.mk>
