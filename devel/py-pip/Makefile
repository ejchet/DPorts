# Created by: Nicola Vitale <nivit@FreeBSD.org>
# $FreeBSD: devel/py-pip/Makefile 323626 2013-07-25 07:28:34Z nivit $

PORTNAME=	pip
PORTVERSION=	1.4
PORTREVISION=	0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP \
		LOCAL/nivit/${PORTNAME}/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Pip installs (Python) packages. An easy_install replacement

LICENSE=	MIT

DOCSDIR=	${PREFIX}/share/doc/${PKGNAMEPREFIX}${PORTNAME}

OPTIONSFILE=	${PORT_DBDIR}/py-${PORTNAME}/options
OPTIONS_DEFINE=	DOCS

PLIST_SUB=	PYTHON_VER=${PYTHON_VER}

# Python3 ready
USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

.include <bsd.port.options.mk>

post-patch:
	${REINPLACE_CMD} -i.bak -e "s/env python$$/&${PYTHON_VER}/" ${WRKSRC}/pip/__init__.py

.if ${PORT_OPTIONS:MDOCS}
post-install:
	@${MKDIR} ${DOCSDIR}
	@cd ${WRKSRC}/docs && ${COPYTREE_SHARE} . ${DOCSDIR}
.endif

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} >= 320
.include "${PORTSDIR}/devel/py-virtualenv/files/py3k-fix-pkg-plist.inc"
.endif

.include <bsd.port.post.mk>
