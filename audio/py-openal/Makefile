# New ports collection makefile for:	PyOpenAL
# Date created:		2005-10-05
# Whom:			Jose Alonso Cardenas Marquez <acardenas@bsd.org.pe>
#
# $FreeBSD: ports/audio/py-openal/Makefile,v 1.13 2012/11/17 05:54:42 svnexp Exp $
#

PORTNAME=	openal
PORTVERSION=	0.1.6
PORTREVISION=	3
CATEGORIES=	audio python
MASTER_SITES=	http://download.gna.org/pyopenal/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	PyOpenAL-${PORTVERSION}

MAINTAINER=	acm@FreeBSD.org
COMMENT=	PyOpenAL is a binding of OpenAL for Python

DIST_SUBDIR=	python
USE_OPENAL=	al alut
USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	PyOpenAL
WRKSRC=		${WRKDIR}/PyOpenAL-${PORTVERSION}
EXAMPLESDIR=	${PREFIX}/share/examples/py-openal

post-patch:
	@${REINPLACE_CMD} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
		${WRKSRC}/setup.py

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/demo/* ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
