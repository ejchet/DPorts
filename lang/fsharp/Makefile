# Created by: Phillip Neumann <pneumann@gmail.com>
# $FreeBSD: lang/fsharp/Makefile 316355 2013-04-23 14:20:25Z bapt $

PORTNAME=	fsharp
PORTVERSION=	3.0.25
PORTREVISION=	1
CATEGORIES=	lang
MASTER_SITES=	https://nodeload.github.com/fsharp/fsharp/tar.gz/ \
		CRITICAL
DISTFILES=	${PORTVERSION}

MAINTAINER=	mono@FreeBSD.org
COMMENT=	Functional and object-oriented language for the .NET platform
LICENSE=	AL2

BUILD_DEPENDS=	mono>=3.0:${PORTSDIR}/lang/mono
RUN_DEPENDS=	mono>=3.0:${PORTSDIR}/lang/mono

USES=		pkgconfig
USE_GMAKE=	yes
USE_AUTOTOOLS=	autoconf

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

# This is currently a workaround for the differences between pkg_* and pkg(8).
.if defined(WITH_PKGNG)
PLIST_SUB+=	LB="${LOCALBASE}/"
.else
PLIST_SUB+=	LB=""
.endif

.include "${.CURDIR}/../../lang/mono/bsd.mono.mk"
.include <bsd.port.mk>
