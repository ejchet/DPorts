# Created by: Kubilay Kocak <koobs@FreeBSD.org>
# $FreeBSD: ports/security/py-pysha3/Makefile,v 1.4 2013/02/09 15:59:42 svnexp Exp $

PORTNAME=	pysha3
PORTVERSION=	0.3
CATEGORIES=	security python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	SHA-3 (Keccak) for Python

# Python3 ready
USE_PYTHON=	yes
USE_PYDISTUTILS=yes

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/_sha3.so \
		%%PYTHON_SITELIBDIR%%/sha3.py \
		%%PYTHON_SITELIBDIR%%/sha3.pyc \
		%%PYTHON_SITELIBDIR%%/sha3.pyo

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} >= 320
.include "${FILESDIR}/py3k-fix-pkg-plist.inc"
.endif

regression-test: build
	@cd ${WRKSRC} && ${PYTHON_CMD} ${PYSETUP} test

.include <bsd.port.post.mk>
