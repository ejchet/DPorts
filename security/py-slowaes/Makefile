# Created by: Neil Booth
# $FreeBSD: security/py-slowaes/Makefile 320620 2013-06-11 18:24:08Z rm $

PORTNAME=	slowaes
DISTVERSION=	0.1a1
CATEGORIES=	security python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	kyuupichan@gmail.com
COMMENT=	Implementation of AES in pure Python

LICENSE=	AL2

USE_PYTHON=	-2.7
USE_PYDISTUTILS=easy_install
PYDISTUTILS_PKGVERSION=	${DISTVERSION}

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/%%PYEASYINSTALL_EGG%%

.include <bsd.port.mk>
