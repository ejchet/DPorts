# Created by: buganini@gmail.com
# $FreeBSD: chinese/bsdconv-opencc/Makefile 317058 2013-05-01 23:13:00Z bdrewery $

PORTNAME=	opencc
PORTVERSION=	10.0
CATEGORIES=	chinese converters
PKGNAMEPREFIX=	bsdconv-
DISTNAME=	${GH_ACCOUNT}-${GH_PROJECT}-${PORTVERSION}-0-g${GH_COMMIT}

MAINTAINER=	buganini@gmail.com
COMMENT=	OpenCC conversion module for bsdconv

LICENSE=	BSD

BUILD_DEPENDS=	bsdconv-mktable:${PORTSDIR}/converters/bsdconv
LIB_DEPENDS=	bsdconv:${PORTSDIR}/converters/bsdconv \
		opencc:${PORTSDIR}/chinese/opencc

USE_GITHUB=	yes
GH_ACCOUNT=	buganini
GH_PROJECT=	${PKGNAMEPREFIX}${PORTNAME}
GH_COMMIT=	38b4a80

MAKE_ARGS=	PREFIX=${PREFIX}

.include <bsd.port.mk>
