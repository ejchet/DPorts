# Created by: Matthias Petermann <matthias@petermann-it.de>
# $FreeBSD: finance/trytond_timesheet/Makefile 324523 2013-08-10 14:10:44Z wg $

PORTNAME=	trytond_timesheet
PORTVERSION=	2.4.2
CATEGORIES=	finance python
MASTER_SITES=	http://downloads.tryton.org/${PORTVERSION:R}/

MAINTAINER=	matthias@petermann-it.de
COMMENT=	Tryton Application Platform (Timesheet Module)

LICENSE=	GPLv3

RUN_DEPENDS=	trytond>=2.4.0:${PORTSDIR}/finance/trytond \
		trytond_company_work_time>=2.4.0:${PORTSDIR}/finance/trytond_company_work_time

CONFLICTS=	trytond_timesheet-2.[68].*

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install

.include <bsd.port.mk>
