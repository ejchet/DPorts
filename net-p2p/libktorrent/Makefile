# $FreeBSD: net-p2p/libktorrent/Makefile 317220 2013-05-03 16:36:39Z ehaupt $

PORTNAME=	libktorrent
DISTVERSION=	1.3.1
PORTREVISION=	2
CATEGORIES=	net-p2p kde
MASTER_SITES=	http://ktorrent.org/downloads/${DISTVERSION:C,^1,4,:C,-.*,,}/

MAINTAINER=	makc@FreeBSD.org
COMMENT=	Torrent library split from KTorrent

BUILD_DEPENDS=	${LOCALBASE}/include/boost/concept_check.hpp:${PORTSDIR}/devel/boost-libs
LIB_DEPENDS=	gcrypt:${PORTSDIR}/security/libgcrypt \
		gmp:${PORTSDIR}/math/gmp \
		qca:${PORTSDIR}/devel/qca

USE_BZIP2=	yes
USE_KDE4=	kdelibs kdehier kdeprefix automoc4
USE_QT4=	qtestlib_build qmake_build moc_build rcc_build uic_build
USES=		cmake:outsource gettext
USE_LDCONFIG=	yes
MAKE_JOBS_SAFE=	yes

SHLIB_VER=	5.0.1
PLIST_SUB+=	SHLIB_VER=${SHLIB_VER} \
		SHLIB_SHVER=${SHLIB_VER:R:R}

.include <bsd.port.mk>
