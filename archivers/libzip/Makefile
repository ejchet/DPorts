# Created by: Alexander Zhuravlev <zaa@zaa.pp.ru>
# $FreeBSD: archivers/libzip/Makefile 322958 2013-07-13 18:01:04Z makc $

PORTNAME=	libzip
PORTVERSION=	0.11.1
CATEGORIES=	archivers devel
MASTER_SITES=	http://www.nih.at/libzip/

MAINTAINER=	makc@FreeBSD.org
COMMENT=	C library for reading, creating, and modifying ZIP archives

USE_XZ=		yes
GNU_CONFIGURE=	yes
MAKE_ENV=	LC_ALL="C"
USE_AUTOTOOLS=	libtool
USES=		pathfix
USE_LDCONFIG=	yes

.include <${.CURDIR}/Makefile.man>
.include <bsd.port.mk>
