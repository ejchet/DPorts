# New ports collection makefile for:	py-repoze.what-pylons
# Date created:		9 August,2009
# Whom:	      		Wen Heping <wenheping@gmail.com>
#
# $FreeBSD: ports/devel/py-repoze.what-pylons/Makefile,v 1.4 2012/11/17 05:56:50 svnexp Exp $
#

PORTNAME=	repoze.what-pylons
PORTVERSION=	1.0
PORTREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	wenheping@gmail.com
COMMENT=	The repoze.what v1 plugin for Pylons/TG2 integration

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pylons>=0.9.7:${PORTSDIR}/www/py-pylons \
		${PYTHON_PKGNAMEPREFIX}repoze.what>=0:${PORTSDIR}/devel/py-repoze.what \
		${PYTHON_PKGNAMEPREFIX}zope.interface>=3.5.2:${PORTSDIR}/devel/py-zope.interface
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PYTHON=		yes
USE_PYDISTUTILS=	easy_install

.include <bsd.port.mk>
