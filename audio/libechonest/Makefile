# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: audio/libechonest/Makefile 321987 2013-06-28 21:17:09Z nivit $

PORTNAME=	libechonest
PORTVERSION=	2.0.3
#PORTREVISION=	0
CATEGORIES=	audio

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Collection of C++/Qt classes designed to use the APIs of The Echo Nest

LICENSE=	GPLv2

LIB_DEPENDS=	qjson:${PORTSDIR}/devel/qjson

GH_ACCOUNT=	lfranchi
GH_PROJECT=	${PORTNAME}
GH_COMMIT=	c02854c

PLIST_SUB=	PORTVERSION=${PORTVERSION}

USES=		cmake pkgconfig
USE_GITHUB=	yes
USE_LDCONFIG=	yes

USE_QT4=	qmake_build moc_build network qtestlib rcc_build xml

.include <bsd.port.mk>
