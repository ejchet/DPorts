# Created by: Olivier Cochard-Labbe <olivier@cochard.me>
# $FreeBSD: devel/deforaos-libsystem/Makefile 316333 2013-04-23 10:13:19Z bapt $

PORTNAME=	libsystem
PORTVERSION=	0.1.6
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://www.defora.org/os/download/download/3527/
DISTNAME=	libSystem-${PORTVERSION}
PKGNAMEPREFIX=	deforaos-

MAINTAINER=	olivier@cochard.me
COMMENT=	DeforaOS core system library

LICENSE=	GPLv3

USES=		pkgconfig
USE_LDCONFIG=	yes
MAKE_ARGS+=	PREFIX=${PREFIX}

post-patch:
	${REINPLACE_CMD} -e 's|/lib/|/libdata/|g' \
		${WRKSRC}/data/pkgconfig.sh

.include <bsd.port.mk>
