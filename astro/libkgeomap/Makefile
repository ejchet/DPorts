# $FreeBSD: astro/libkgeomap/Makefile 315762 2013-04-08 17:10:56Z makc $

PORTNAME=	libkgeomap
PORTVERSION=	${DIGIKAM_VER}
CATEGORIES=	astro kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE4 library for browsing photos on a map

.include "${.CURDIR}/../../graphics/digikam-kde4/Makefile.common"

USE_KDE4+=	libkexiv2 marble
USE_LDCONFIG=	yes

post-patch:
	${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_INSTALL_DIR}|libdata|' \
		${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
