# Created by: Dryice Liu <dryice@dryice.name>
# $FreeBSD: devel/py-nose/Makefile 320340 2013-06-09 15:06:41Z koobs $

PORTNAME=	nose
PORTVERSION=	1.3.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Discovery-based unittest extension

LICENSE=	LGPL21

# Python3 ready
USE_PYTHON=		yes
USE_PYDISTUTILS=	easy_install

PLIST_SUB+=	PYTHON_VER=${PYTHON_VER}

.if !defined(NO_INSTALL_MANPAGES)
MAN1=		nosetests.1

post-install:
	${INSTALL_MAN} ${WRKSRC}/nosetests.1 ${MANPREFIX}/man/man1
.endif

regression-test: build
	@cd ${WRKSRC} && ${PYTHON_CMD} selftest.py

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} >= 320
.include "${PORTSDIR}/devel/py-virtualenv/files/py3k-fix-pkg-plist.inc"
.endif

.include <bsd.port.post.mk>
