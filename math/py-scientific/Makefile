# New ports collection makefile for:	py-scientific
# Date created:		29 July 1999
# Whom:			Thomas Gellekum <tg@FreeBSD.org>
#
# $FreeBSD: ports/math/py-scientific/Makefile,v 1.26 2012/11/17 05:59:29 svnexp Exp $
#

PORTNAME=	scientific
PORTVERSION=	2.8
CATEGORIES=	math python
MASTER_SITES=	http://sourcesup.cru.fr/frs/download.php/2309/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	ScientificPython-${PORTVERSION}

MAINTAINER=	fmysh@iijmio-mail.jp
COMMENT=	Collection of Python modules for scientific computing

BUILD_DEPENDS=	${PYNUMPY}
LIB_DEPENDS=	netcdf.4:${PORTSDIR}/science/netcdf
RUN_DEPENDS=	${PYNUMPY}

USE_PYTHON=	yes
USE_PYDISTUTILS=yes
PYDISTUTILS_PKGNAME=	ScientificPython

DOCSDIR=	${PREFIX}/share/doc/${PKGNAMEPREFIX}${PORTNAME}
EXAMPLESDIR=	${PREFIX}/share/examples/${PKGNAMEPREFIX}${PORTNAME}

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOCSDIR}
	cd ${WRKDIR}/${DISTNAME}/Doc; ${TAR} -c --exclude='*~' -f - . | \
	    (cd ${DOCSDIR}; ${TAR} -xf -)
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	cd ${WRKDIR}/${DISTNAME}/Examples; ${TAR} -c --exclude='*~' -f - . | \
	    (cd ${EXAMPLESDIR}; ${TAR} -xf -)
.endif

.include <bsd.port.mk>
