# Created by: Matthew X. Economou <xenophon+fbsdports@irtnog.org>
# $FreeBSD: www/py-django-sekizai/Makefile 314898 2013-03-22 09:22:16Z culot $

PORTNAME=	django-sekizai
PORTVERSION=	0.7
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	xenophon+fbsdports@irtnog.org
COMMENT=	Block templating system for Django

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}django>0:${PORTSDIR}/www/py-django \
		${PYTHON_PKGNAMEPREFIX}django-classy-tags>=0.3.1:${PORTSDIR}/www/py-django-classy-tags

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	easy_install

.include <bsd.port.mk>
