# Created by: buganini@gmail.com
# $FreeBSD: chinese/bug5/Makefile 317059 2013-05-01 23:13:41Z bdrewery $

PORTNAME=	bug5
PORTVERSION=	1.15
CATEGORIES=	chinese converters
DISTNAME=	${GH_ACCOUNT}-${GH_PROJECT}-${PORTVERSION}-0-g${GH_COMMIT}

MAINTAINER=	buganini@gmail.com
COMMENT=	A Big5/GBK <-> UTF-8 translating layer in terminal

LICENSE=	BSD

LIB_DEPENDS=	bsdconv:${PORTSDIR}/converters/bsdconv

USE_GITHUB=	yes
GH_ACCOUNT=	buganini
GH_COMMIT=	67beea0

MAKE_ARGS=	PREFIX=${PREFIX}

PLIST_FILES=	bin/bug5

.include <bsd.port.mk>
