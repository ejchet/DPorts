# New ports collection makefile for:	zdaemon
# Date created:				22 Nov, 2008
# Whom:					Wen Heping <wenheping@gmail.com>
#
# $FreeBSD: ports/sysutils/py-zdaemon/Makefile,v 1.7 2012/11/17 06:01:43 svnexp Exp $
#

PORTNAME=	zdaemon
PORTVERSION=	2.0.7
CATEGORIES=	sysutils python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Daemon Process Control Library and Tools for Unix-bases Systems

LICENSE=	ZPL21

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zconfig>0:${PORTSDIR}/devel/py-zconfig

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	easy_install

.include <bsd.port.mk>
