# Created by: Alexander Churanov <churanov.port.maintainer@gmail.com>
# $FreeBSD: devel/boost-jam/Makefile 317037 2013-05-01 18:15:28Z bapt $

PORTNAME=	boost-jam
COMMENT=	Build tool from the boost.org

PORTREVISION=	1

PLIST_FILES=	bin/bjam

EXTRACT_AFTER_ARGS=	${DISTNAME}/tools/build/v2/engine

.include "${.CURDIR}/../boost-all/common.mk"

do-build:
	cd ${WRKSRC}/tools/build/v2/engine && \
		${MAKE_ENV} ./build.sh ${CC}

do-install:
	${MKDIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/tools/build/v2/engine/bin.*/bjam \
		${PREFIX}/bin/

.include <bsd.port.mk>
