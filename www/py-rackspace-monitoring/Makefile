# Created by: Kubilay Kocak <koobs@FreeBSD.org>
# $FreeBSD: www/py-rackspace-monitoring/Makefile 322427 2013-07-07 11:38:47Z koobs $

PORTNAME=	rackspace-monitoring
PORTVERSION=	0.5.2
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	Python client library for Rackspace Cloud Monitoring

LICENSE=	AL2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}libcloud>=0.12.4:${PORTSDIR}/net/py-libcloud

# Python3 ready
USE_PYTHON=		yes
USE_PYDISTUTILS=	yes

.include <bsd.port.mk>
