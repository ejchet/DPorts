# Created by: Jason Bacon <jwbacon@tds.net>
# $FreeBSD: math/py-ffc/Makefile 318891 2013-05-23 17:56:55Z miwi $

PORTNAME=	ffc
PORTVERSION=	${MMVERSION}.0
CATEGORIES=	math python
MASTER_SITES=	https://launchpad.net/${PORTNAME}/${MMVERSION}.x/${PORTVERSION}/+download/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	jwbacon@tds.net
COMMENT=	C++ code generator for multilinear forms

LICENSE=	LGPL3

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	FFC

FETCH_ARGS=	-F

MAN1=		ffc.1
MANCOMPRESSED=	yes

MMVERSION=	1.2

post-patch:
	${REINPLACE_CMD} -i '' -e 's|os.path.join(os.path.sep, "usr")|os.path.normpath("${PREFIX}")|' \
		 ${WRKSRC}/test/regression/test.py

.include <bsd.port.mk>
