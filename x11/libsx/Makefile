# Created by: Pedro Giffuni
# $FreeBSD: x11/libsx/Makefile 315242 2013-03-25 19:14:43Z eadler $

PORTNAME=	libsx
PORTVERSION=	1.1
PORTREVISION=	4
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	libraries
DISTNAME=	${PORTNAME}
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple X11 library

LIB_DEPENDS=	Xaw3d:${PORTSDIR}/x11-toolkits/Xaw3d

USE_XORG=	x11 xaw xext xmu xt
ALL_TARGET=	src freq
MAKE_JOBS_UNSAFE=	yes

.include <bsd.port.options.mk>

do-install:
	${INSTALL_DATA} ${WRKSRC}/src/libsx.a  ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/freq/libfreq.a  ${PREFIX}/lib
	${MKDIR} ${PREFIX}/include/X11/libsx
	${INSTALL_DATA} ${WRKSRC}/src/libsx.h ${PREFIX}/include/X11/libsx
	${INSTALL_DATA} ${WRKSRC}/freq/freq.h ${PREFIX}/include/X11/libsx

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${PREFIX}/share/doc/libsx
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/libsx
	${GZIP_CMD} ${PREFIX}/share/doc/libsx/*.doc
.endif

.include <bsd.port.mk>
