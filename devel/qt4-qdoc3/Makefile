# Created by: Maxim Ignatenko <gelraen.ua@gmail.com>
# $FreeBSD: devel/qt4-qdoc3/Makefile 316786 2013-04-29 08:57:12Z bapt $

PORTNAME=	qdoc3
DISTVERSION=	${QT4_VERSION}
CATEGORIES=	devel textproc
PKGNAMEPREFIX=	qt4-

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Qt documentation generator

USE_QT4=	qmake_build corelib gui xml
QT_NONSTANDARD=	yes
QT_DIST=	yes

HAS_CONFIGURE=	yes

ALL_TARGET=	first
CONFIGURE_ENV?=	QTDIR=${WRKSRC} PATH=${WRKSRC}/bin:$$PATH
MAKE_ENV?=	QTDIR=${WRKSRC} LD_LIBRARY_PATH=${WRKSRC}/lib:$$LD_LIBRARY_PATH \
		PATH=${WRKSRC}/bin:$$PATH
DO_NOT_EXTRACT=	demos doc examples mkspecs qmake translations \
		src/activeqt src/dbus src/multimedia src/opengl src/openvg \
		src/s60installs src/s60main src/scripttools src/sql src/svg \
		src/testlib src/winmain src/xmlpatterns
.for dne in ${DO_NOT_EXTRACT}
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/${dne}'
.endfor

EXTRA_PATCHES=	${.CURDIR}/../../devel/qt4/files/patch-configure

BUILD_WRKSRC=	${WRKSRC}/tools/${PORTNAME}
INSTALL_WRKSRC=	${BUILD_WRKSRC}

pre-configure:
	${MKDIR} ${WRKSRC}/mkspecs/modules
	${LN} -sf ${LOCALBASE}/bin/qmake-qt4 ${WRKSRC}/bin/qmake

.include <bsd.port.mk>
