# $FreeBSD: finance/trytond_project/Makefile 318520 2013-05-19 12:51:48Z wen $

PORTNAME=	trytond_project
PORTVERSION=	2.4.1
CATEGORIES=	finance python
MASTER_SITES=	http://downloads.tryton.org/${PORTVERSION:R}/

MAINTAINER=	matthias@petermann.it
COMMENT=	Tryton Application Platform (Project Module)

LICENSE=	GPLv3

RUN_DEPENDS=	trytond>=2.4.0:${PORTSDIR}/finance/trytond \
		trytond_timesheet>=2.4.0:${PORTSDIR}/finance/trytond_timesheet \
		trytond_party>=2.4.0:${PORTSDIR}/finance/trytond_party

CONFLICTS=	trytond_project-2.[68].*

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install

.include <bsd.port.mk>
