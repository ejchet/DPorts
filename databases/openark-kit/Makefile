# $FreeBSD: databases/openark-kit/Makefile 319292 2013-05-28 05:53:58Z miwi $

PORTNAME=	openark-kit
PORTVERSION=	196
CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	gslin@gslin.org
COMMENT=	Common utilities for MySQL

LICENSE=	BSD

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}MySQLdb>=1.2.2:${PORTSDIR}/databases/py-MySQLdb

PROJECTHOST=	openarkkit
USE_PYDISTUTILS=	yes
USE_PYTHON=	yes

.include <bsd.port.mk>
