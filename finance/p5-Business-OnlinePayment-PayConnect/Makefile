# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD: finance/p5-Business-OnlinePayment-PayConnect/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Business-OnlinePayment-PayConnect
PORTVERSION=	0.02
PORTREVISION=	2
CATEGORIES=	finance perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Business::OnlinePayment backend module for PaymentOne PayConnect

BUILD_DEPENDS=	p5-Business-CreditCard>=0:${PORTSDIR}/finance/p5-Business-CreditCard \
		p5-Business-OnlinePayment>=0:${PORTSDIR}/finance/p5-Business-OnlinePayment
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Business::OnlinePayment::PayConnect.3

.include <bsd.port.mk>
