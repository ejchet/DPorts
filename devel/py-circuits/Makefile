# Created by: Kubilay Kocak <koobs@FreeBSD.org>
# $FreeBSD: devel/py-circuits/Makefile 315176 2013-03-24 22:49:51Z koobs $

PORTNAME=	circuits
PORTVERSION=	2.1.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	Asynchronous Component-based Event Application Framework

TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pytest>0:${PORTSDIR}/devel/py-pytest

USE_PYTHON=		yes
USE_PYDISTUTILS=	easy_install

# Bypass ports infrastructure bug
OPTIONSFILE?=	${PORT_DBDIR}/py-${PORTNAME}/options

.include <bsd.port.options.mk>

regression-test: build
	@cd ${WRKSRC} && ${PYTHON_CMD} ${PYSETUP} test

.include <bsd.port.mk>
