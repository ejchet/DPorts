# Created by: Joris Vandalon
# $FreeBSD: archivers/libunrar4/Makefile 324100 2013-08-01 11:57:14Z bapt $

PORTNAME=	libunrar4
PORTVERSION=	4.2.4
CATEGORIES=	archivers
MASTER_SITES=	http://www.rarlab.com/rar/
DISTNAME=	unrarsrc-${PORTVERSION}

MAINTAINER=	joris@vandalon.nl
COMMENT=	Library to work with RAR archives

WRKSRC=		${WRKDIR}/unrar

USES=		gmake
MAKE_ARGS=	CC="${CC}" CXX="${CXX}"
MAKEFILE=	makefile.unix
ALL_TARGET=	lib
USE_LDCONFIG=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/libunrar.so ${PREFIX}/lib/libunrar.so.4
	cd ${PREFIX}/lib && ${LN} -sf libunrar.so.4 libunrar.so
	${MKDIR} ${PREFIX}/include/libunrar4
	${INSTALL_DATA} ${WRKSRC}/dll.hpp ${PREFIX}/include/libunrar4/dll.hpp

.include <bsd.port.mk>
