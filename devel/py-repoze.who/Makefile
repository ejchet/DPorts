# New ports collection makefile for:	py-repoze.who
# Date created:		3rd August,2009
# Whom:	      		Wen Heping <wenheping@gmail.com>
#
# $FreeBSD: devel/py-repoze.who/Makefile 300896 2012-07-14 13:54:48Z beat $
#

PORTNAME=	repoze.who
PORTVERSION=	2.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	An identification and authentication framework for WSGI

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Paste>=1.7.2:${PORTSDIR}/www/py-paste \
		${PYTHON_PKGNAMEPREFIX}zope.interface>=3.5.2:${PORTSDIR}/devel/py-zope.interface
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

.include <bsd.port.mk>
