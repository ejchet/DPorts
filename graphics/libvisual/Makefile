# Created by: Koop Mast <kwm@FreeBSD.org>
# $FreeBSD: graphics/libvisual/Makefile 316343 2013-04-23 10:47:02Z bapt $

# WARNING: when updating this port check if the ports that use libvisual
# can work with it. Backwards compatibility is known to be broken in the past.

PORTNAME=	libvisual
PORTVERSION=	0.2.0
PORTREVISION=	3
CATEGORIES=	graphics
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Abstraction library that sits between apps and visual plugin

USES=	pathfix pkgconfig
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes
CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib ${PTHREAD_LIBS}"
CFLAGS+=	-I${LOCALBASE}/include ${PTHREAD_CFLAGS}

.include <bsd.port.pre.mk>

.if ${ARCH} == "i386" || ${ARCH} == "x86_64"
CFLAGS+=	-mmmx
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|-Wno-unused-variable||g' \
		-e 's|-O3|${CFLAGS}|g' \
		${WRKSRC}/libvisual/Makefile.in

.include <bsd.port.post.mk>
