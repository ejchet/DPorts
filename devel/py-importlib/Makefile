# Created by: Alexandros Kosiaris <akosiaris+ports@gmail.com>
# $FreeBSD: ports/devel/py-importlib/Makefile,v 1.3 2012/11/17 05:56:47 svnexp Exp $

PORTNAME=	importlib
PORTVERSION=	1.0.2
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	akosiaris+ports@gmail.com
COMMENT=	Backport of importlib.import_module() from Python 2.7

USE_PYTHON=	2.6
USE_PYDISTUTILS=	yes

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/importlib/__init__.py \
		%%PYTHON_SITELIBDIR%%/importlib/__init__.pyc \
		%%PYTHON_SITELIBDIR%%/importlib/__init__.pyo
PLIST_DIRS=	%%PYTHON_SITELIBDIR%%/importlib

.include <bsd.port.mk>
