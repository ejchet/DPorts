# Created by: Matthias Petermann <matthias@petermann-it.de>
# $FreeBSD: finance/trytond_stock/Makefile 324513 2013-08-10 13:51:42Z wg $

PORTNAME=	trytond_stock
PORTVERSION=	2.4.6
CATEGORIES=	finance python
MASTER_SITES=	http://downloads.tryton.org/${PORTVERSION:R}/

MAINTAINER=	matthias@petermann-it.de
COMMENT=	Tryton Application Platform (Stock Module)

LICENSE=	GPLv3

RUN_DEPENDS=	trytond>=2.4.0:${PORTSDIR}/finance/trytond \
		trytond_party>=2.4.0:${PORTSDIR}/finance/trytond_party \
		trytond_product>=2.4.0:${PORTSDIR}/finance/trytond_product \
		trytond_company>=2.4.0:${PORTSDIR}/finance/trytond_company \
		trytond_currency>=2.4.0:${PORTSDIR}/finance/trytond_currency

CONFLICTS=	trytond_stock-2.[68].*

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install

.include <bsd.port.mk>
