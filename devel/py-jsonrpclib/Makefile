# Created by: Attila Nagy <bra@fsn.hu>
# $FreeBSD: ports/devel/py-jsonrpclib/Makefile,v 1.3 2012/11/17 05:56:48 svnexp Exp $

PORTNAME=	jsonrpclib
PORTVERSION=	0.1.3
PORTREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	bra@fsn.hu
COMMENT=	Implements the JSON-RPC 2.0 proposed specification in pure Python

LICENSE=	AL2

USE_PYTHON=	-2.7
USE_PYDISTUTILS=yes

OPTIONSFILE=	${PORT_DBDIR}/${PORTNAME}/options
OPTIONS_DEFINE=	CJSON
CJSON_DESC=	Use cjson instead of json or simplejson

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MCJSON}
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}cjson>0:${PORTSDIR}/devel/py-cjson
.endif

.include <bsd.port.mk>
