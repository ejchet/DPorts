# Created by: Kurt Jaeger <fbsd-ports@opsec.eu>
# $FreeBSD: devel/lfcxml/Makefile 324378 2013-08-08 07:43:45Z culot $

PORTNAME=	lfcxml
PORTVERSION=	1.1.5
CATEGORIES=	devel
MASTER_SITES=	http://www.lemke-it.com/

MAINTAINER=	fbsd-ports@opsec.eu
COMMENT=	C++ XML library, used for databases/cego

LICENSE=	GPLv3

LIB_DEPENDS=	lfcbase:${PORTSDIR}/devel/lfcbase

GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
USE_LDCONFIG=	yes
USE_AUTOTOOLS=	autoconf:env

.include <bsd.port.mk>
