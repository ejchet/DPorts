# Created by: William Grzybowski <wg@FreeBSD.org>
# $FreeBSD: devel/py-biplist/Makefile 324234 2013-08-04 13:57:30Z wg $

PORTNAME=	biplist
PORTVERSION=	0.5
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	wg@FreeBSD.org
COMMENT=	Library for reading/writing binary plists

LICENSE=	BSD

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}nose>=0:${PORTSDIR}/devel/py-nose \
		${PYTHON_PKGNAMEPREFIX}coverage>=0:${PORTSDIR}/devel/py-coverage
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}six>=0:${PORTSDIR}/devel/py-six
TEST_DEPENDS:=	${RUN_DEPENDS}

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install

.include <bsd.port.pre.mk>

post-install:
.if ${PYTHON_REL} >= 320
.include "${PORTSDIR}/devel/py-virtualenv/files/py3k-fix-pkg-plist.inc"
.endif

regression-test: build
	@cd ${WRKSRC} && ${PYTHON_CMD} ${PYSETUP} test

.include <bsd.port.post.mk>
