# Ports collection makefile for:	py-xmpppy
# Date created:				21 April 2006
# Whom:					Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: net-im/py-xmpppy/Makefile 323455 2013-07-22 14:34:22Z vg $
#

PORTNAME=	xmpppy
PORTVERSION=	0.5.0
PORTREVISION=	2
CATEGORIES=	net-im python
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTVERSION}-rc1/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME}-${PORTVERSION}rc1

MAINTAINER=	vg@FreeBSD.org
COMMENT=	A Python library that provides easy scripting with Jabber

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}dnspython>=1.7.1:${PORTSDIR}/dns/py-dnspython

USE_PYTHON=	2.6+
USE_PYDISTUTILS=	yes

post-patch:
	@${GREP} -lr '/usr/bin/python' ${WRKSRC} | \
		${XARGS} ${REINPLACE_CMD} -e "s,^#!/usr/bin/python,#!${PYTHON_CMD},"

.include <bsd.port.mk>
