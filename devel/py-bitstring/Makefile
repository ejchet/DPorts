# Created by: Sofian Brabez <sbrabez@gmail.com>
# $FreeBSD: devel/py-bitstring/Makefile 316467 2013-04-24 18:25:56Z sbz $

PORTNAME=	bitstring
PORTVERSION=	3.1.2
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sbz@FreeBSD.org
COMMENT=	Simple construction, analysis, and modification of binary data

LICENSE=	MIT

USE_PYTHON=	2.6+
USE_PYDISTUTILS=	yes
USE_ZIP=	yes

DOCSDIR=	${PREFIX}/share/doc/py-${PORTNAME}

PORTDOCS=	PKG-INFO README.txt release_notes.txt

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}
.endif

regression-test: extract
	@(cd ${WRKSRC}/test && ${PYTHON_CMD} -c 'import unittest, test_${PORTNAME}; unittest.main(test_${PORTNAME})')

.include <bsd.port.mk>
