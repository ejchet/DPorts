# New ports collection makefile for:	py-django-keyedcache
# Date created:				19 May 2010
# Whom:					Kevin Golding <ports@caomhin.org>
#
# $FreeBSD: ports/www/py-django-keyedcache/Makefile,v 1.3 2012/11/17 06:02:59 svnexp Exp $
#

PORTNAME=	django-keyedcache
PORTVERSION=	1.4.4
CATEGORIES=	www python
MASTER_SITES=	http://www.caomhin.org/ports/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ports@caomhin.org
COMMENT=	Simplified, speedy way to manage caching in Django apps

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/django/bin/django-admin.py:${PORTSDIR}/www/py-django

LICENSE=	BSD

WRKSRC=		${WRKDIR}/bkroeze-django-keyedcache-4be18235b372
USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install
PYDISTUTILS_NOEGGINFO=	yes
PYEASYINSTALL_EGG=	${PYDISTUTILS_PKGNAME:C/[^A-Za-z0-9.]+/_/g}-${PORTVERSION:C/([[:digit:]]\.[[:digit:]])\./\1_/g}-${PYTHON_VERSION:S/thon//}${PYEASYINSTALL_OSARCH}.egg
PYEASYINSTALL_UNINSTALLARGS=	-q -m -S ${PYTHON_SITELIBDIR} \
				${PYDISTUTILS_PKGNAME}==${PYDISTUTILS_PKGVERSION:C/([[:digit:]]\.[[:digit:]])\./\1_/g}

.include <bsd.port.mk>
