# Created by: Andrey Zonov <andrey@zonov.org>
# $FreeBSD: ports/devel/py-msgpack/Makefile,v 1.5 2012/12/16 20:15:01 svnexp Exp $

PORTNAME=	msgpack
PORTVERSION=	0.2.2
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME}-python-${PORTVERSION}

MAINTAINER=	zont@FreeBSD.org
COMMENT=	MessagePack (de)serializer for Python

LICENSE=	AL2

USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install
PYDISTUTILS_INSTALLARGS=	-O 1 -N -Z -S ${PYTHON_SITELIBDIR} -d ${PYEASYINSTALL_SITELIBDIR} ${WRKSRC}/dist/${PYEASYINSTALL_EGG}
PYDISTUTILS_PKGNAME=	${PORTNAME}_python
PYEASYINSTALL_ARCHDEP=	yes

.include <bsd.port.mk>
