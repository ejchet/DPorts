# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD: finance/p5-Business-OnlinePayment-VirtualNet/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Business-OnlinePayment-VirtualNet
PORTVERSION=	0.02
PORTREVISION=	2
CATEGORIES=	finance perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Business::OnlinePayment backend module for Vital VirtualNet

BUILD_DEPENDS=	p5-Business-CreditCard>=0:${PORTSDIR}/finance/p5-Business-CreditCard \
		p5-Business-OnlinePayment>=0:${PORTSDIR}/finance/p5-Business-OnlinePayment \
		p5-TimeDate>=0:${PORTSDIR}/devel/p5-TimeDate \
		p5-File-CounterFile>=0:${PORTSDIR}/misc/p5-File-CounterFile \
		p5-String-Parity>=0:${PORTSDIR}/devel/p5-String-Parity \
		p5-String-LRC>=0:${PORTSDIR}/devel/p5-String-LRC
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Business::OnlinePayment::VirtualNet.3

.include <bsd.port.mk>
