# New ports collection makefile for:	py-jswebkit
# Date created:				07 Mar 2010
# Whom:					Ju Pengfei <jupengfei@gmail.com>
#
# $FreeBSD: www/py-jswebkit/Makefile 300897 2012-07-14 14:29:18Z beat $
#

PORTNAME=		jswebkit
PORTVERSION=		0.0.3
PORTREVISION=	2
CATEGORIES=		www python
MASTER_SITES=		GOOGLE_CODE
PKGNAMEPREFIX=		${PYTHON_PKGNAMEPREFIX}
DISTNAME=		python-${PORTNAME}-${PORTVERSION}

MAINTAINER=		ports@FreeBSD.org
COMMENT=		WebKit/JavaScriptCore Python bindings

BUILD_DEPENDS=		cython:${PORTSDIR}/lang/cython
LIB_DEPENDS=		webkitgtk-1.0:${PORTSDIR}/www/webkit-gtk2
RUN_DEPENDS:=		${BUILD_DEPENDS}

PLIST_FILES=		%%PYTHON_SITELIBDIR%%/jswebkit.so

PROJECTHOST=		gwrite

WRKSRC=			${WRKDIR}/${DISTNAME}
USE_PYTHON=		-2.7
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	python_jswebkit

.include <bsd.port.mk>
