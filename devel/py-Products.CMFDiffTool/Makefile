# $FreeBSD: devel/py-Products.CMFDiffTool/Makefile 315489 2013-03-28 17:23:24Z rm $

PORTNAME=	Products.CMFDiffTool
PORTVERSION=	2.0.2
CATEGORIES=	devel python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Diff tool for Plone

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zope.interface>=0:${PORTSDIR}/devel/py-zope.interface \
		${PYTHON_PKGNAMEPREFIX}Products.CMFCore>=0:${PORTSDIR}/devel/py-Products.CMFCore \
		${PYTHON_PKGNAMEPREFIX}Products.GenericSetup>=0:${PORTSDIR}/devel/py-Products.GenericSetup \
		${PYTHON_PKGNAMEPREFIX}Acquisition>=0:${PORTSDIR}/devel/py-Acquisition

DIST_SUBDIR=	zope
USE_PYTHON=	-2.7
USE_PYDISTUTILS=	easy_install
USE_ZIP=	yes
#USE_ZOPE=	yes

.include <bsd.port.mk>
