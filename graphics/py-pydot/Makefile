# New ports collection makefile for:	pydot
# Date created:				15 Sep 2004
# Whom:					Stefan Walter <sw@gegenunendlich.de>
#
# $FreeBSD: graphics/py-pydot/Makefile 316617 2013-04-26 14:36:07Z stefan $
#

PORTNAME=	pydot
PORTVERSION=	1.0.28
#PORTREVISION=	0
CATEGORIES=	graphics python
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	stefan@FreeBSD.org
COMMENT=	A Python interface to the Graphviz Dot language

BUILD_DEPENDS=	${PYTHON_SITELIBDIR}/pyparsing.py:${PORTSDIR}/devel/py-parsing
RUN_DEPENDS=	${PYTHON_SITELIBDIR}/pyparsing.py:${PORTSDIR}/devel/py-parsing \
		dot:${PORTSDIR}/graphics/graphviz

PROJECTHOST=	${PORTNAME}
USE_PYTHON=	yes
USE_PYDISTUTILS=yes

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/dot_parser.py \
		%%PYTHON_SITELIBDIR%%/dot_parser.pyc \
		%%PYTHON_SITELIBDIR%%/dot_parser.pyo \
		%%PYTHON_SITELIBDIR%%/pydot.py \
		%%PYTHON_SITELIBDIR%%/pydot.pyc \
		%%PYTHON_SITELIBDIR%%/pydot.pyo

.include <bsd.port.mk>
