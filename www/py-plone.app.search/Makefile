# $FreeBSD: www/py-plone.app.search/Makefile 315489 2013-03-28 17:23:24Z rm $

PORTNAME=	plone.app.search
PORTVERSION=	1.0.8
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Search user interface for Plone CMS

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}plone.app.contentlisting>=0:${PORTSDIR}/www/py-plone.app.contentlisting

DIST_SUBDIR=	zope
USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install
USE_ZIP=	yes

.include <bsd.port.mk>
