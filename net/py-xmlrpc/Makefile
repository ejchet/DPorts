# New ports collection makefile for:	py-xmlrpc
# Date created:				22 April 2001
# Whom:					Hye-Shik Chang <perky@python.or.kr>
#
# $FreeBSD: ports/net/py-xmlrpc/Makefile,v 1.20 2012/11/17 06:00:16 svnexp Exp $
#

PORTNAME=	xmlrpc
PORTVERSION=	0.8.8.3
PORTREVISION=	2
CATEGORIES=	net python
MASTER_SITES=	SF/py-${PORTNAME}/source/py-${PORTNAME}-${PORTVERSION}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	py-${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A fast implementation of the xmlrpc spec for Python

LICENSE=	LGPL21 # (or later)
LICENSE_FILE=	${WRKSRC}/COPYING

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	py-${PORTNAME}

EXAMPLESDIR=	${PREFIX}/share/examples/py-${PORTNAME}

PORTEXAMPLES=	*
PLIST_FILES=	%%PYTHON_SITELIBDIR%%/_xmlrpc.so \
		%%PYTHON_SITELIBDIR%%/pyxmlrpclib.py \
		%%PYTHON_SITELIBDIR%%/pyxmlrpclib.pyc \
		%%PYTHON_SITELIBDIR%%/pyxmlrpclib.pyo \
		%%PYTHON_SITELIBDIR%%/xmlrpc.py \
		%%PYTHON_SITELIBDIR%%/xmlrpc.pyc \
		%%PYTHON_SITELIBDIR%%/xmlrpc.pyo

post-install:
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	@(cd ${WRKSRC}/examples && ${COPYTREE_SHARE} . ${EXAMPLESDIR})
.endif

.include <bsd.port.mk>
