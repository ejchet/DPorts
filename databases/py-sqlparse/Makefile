# Ports collection makefile for:    py-sqlparse
# Date created:         April 29, 2011
# Whom:                 Roland van Laar <roland@micite.net>
#
# $FreeBSD: ports/databases/py-sqlparse/Makefile,v 1.2 2012/11/17 05:55:23 svnexp Exp $
#

PORTNAME=	sqlparse
PORTVERSION=	0.1.2
CATEGORIES=	databases python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	roland@micite.net
COMMENT=	A non-validating SQL parser for Python

USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

post-patch:
	@${REINPLACE_CMD} -e 's|distutils.core|setuptools|g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
