# New ports collection makefile for:	py-aspects
# Date created:		2009-02-02
# Whom:			Sofian Brabez <sbrabez@gmail.com>
#
# $FreeBSD: ports/devel/py-aspects/Makefile,v 1.3 2012/11/17 05:56:45 svnexp Exp $
#

PORTNAME=	aspects
PORTVERSION=	1.3
CATEGORIES=	devel python
MASTER_SITES=	http://www.cs.tut.fi/~ask/aspects/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	python-${PORTNAME}-${PORTVERSION}

MAINTAINER=	sbz@FreeBSD.org
COMMENT=	Lightweight aspect oriented programming library for Python

USE_GMAKE=	yes
USE_PYTHON=	2.5+
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	python-${PORTNAME}

PKGMESSAGE=	${WRKDIR}/pkg-message
SUB_FILES=	pkg-message

EXAMPLESFILES=	httpget_example.py timeout_advice.py timeout_example.py \
		tracer_advice.py tracer_example.py typecheck_advice.py \
		typecheck_example.py
EXAMPLESDIR=	${PREFIX}/share/examples/py-${PORTNAME}

do-build:
	@${GMAKE} -C ${WRKSRC} check

.if !defined(NOPORTEXAMPLES)
post-install:
	@${MKDIR} ${EXAMPLESDIR}
.for f in ${EXAMPLESFILES}
	@${INSTALL_DATA} ${WRKSRC}/examples/${f} ${EXAMPLESDIR}
.endfor
.endif

.if !defined(BATCH)
	@${CAT} ${PKGMESSAGE}
.endif

.include <bsd.port.mk>
