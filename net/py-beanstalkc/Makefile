# Created by: Li-Wen Hsu <lwhsu@FreeBSD.org>
# $FreeBSD: ports/net/py-beanstalkc/Makefile,v 1.6 2013/02/09 15:59:33 svnexp Exp $

PORTNAME=	beanstalkc
PORTVERSION=	0.3.0
CATEGORIES=	net python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	A simple beanstalkd client library for Python

LICENSE=	AL2

USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

OPTIONS_DEFINE=	YAML
OPTIONS_DEFAULT=	YAML
YAML_DESC=	Support parsing YAML responses

# bypass infrastructure bug
OPTIONSFILE=	${PORT_DBDIR}/py-${PORTNAME}/options

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MYAML}
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}yaml>0:${PORTSDIR}/devel/py-yaml
.endif

.include <bsd.port.mk>
