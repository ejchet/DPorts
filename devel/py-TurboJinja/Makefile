# New ports collection makefile for:	py-TurboJinja
# Date created:		2007-02-14
# Whom:			Nicola Vitale <nivit@FreeBSD.org>
#
# $FreeBSD: ports/devel/py-TurboJinja/Makefile,v 1.7 2012/11/17 05:56:44 svnexp Exp $
#

PORTNAME=	TurboJinja
PORTVERSION=	0.9.1
PORTREVISION=	2
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Jinja (Django & Smarty-like) template for TurboGears

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}TurboGears>=1.1.2:${PORTSDIR}/www/py-turbogears
RUN_DEPENDS:=	${BUILD_DEPENDS}
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}Jinja>=0.9:${PORTSDIR}/devel/py-Jinja

USE_PYTHON=	2.5+
USE_PYDISTUTILS=	easy_install
USE_ZIP=	yes

.include <bsd.port.mk>
