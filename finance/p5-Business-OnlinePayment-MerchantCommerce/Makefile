# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD: finance/p5-Business-OnlinePayment-MerchantCommerce/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Business-OnlinePayment-MerchantCommerce
PORTVERSION=	0.01
PORTREVISION=	1
CATEGORIES=	finance perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Business::OnlinePayment backend module for MerchantCommerce authorization service

BUILD_DEPENDS=	p5-Business-OnlinePayment>=0:${PORTSDIR}/finance/p5-Business-OnlinePayment
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Business::OnlinePayment::MerchantCommerce.3

.include <bsd.port.mk>
