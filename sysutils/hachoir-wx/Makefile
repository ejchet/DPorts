# New ports collection makefile for:	hachoir-wx
# Date created:		25 January 2007
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/sysutils/hachoir-wx/Makefile,v 1.11 2012/11/17 06:01:34 svnexp Exp $
#

PORTNAME=	hachoir-wx
PORTVERSION=	0.3
PORTREVISION=	3
CATEGORIES=	sysutils python
MASTER_SITES=	CHEESESHOP

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Hachoir GUI

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/hachoir_parser/__init__.py:${PORTSDIR}/devel/hachoir-parser

USE_PYTHON=	yes
USE_WX=		2.6+
WX_COMPS=	python
WX_UNICODE=	yes
USE_PYDISTUTILS=yes

.include <bsd.port.mk>
