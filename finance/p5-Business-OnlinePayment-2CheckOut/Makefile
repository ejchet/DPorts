# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD: finance/p5-Business-OnlinePayment-2CheckOut/Makefile 324007 2013-07-31 06:54:09Z az $

PORTNAME=	Business-OnlinePayment-2CheckOut
PORTVERSION=	0.02
PORTREVISION=	1
CATEGORIES=	finance perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Business::OnlinePayment backend module for 2CheckOut authorization service

BUILD_DEPENDS=	p5-Business-CreditCard>=0:${PORTSDIR}/finance/p5-Business-CreditCard \
		p5-Business-OnlinePayment>=0:${PORTSDIR}/finance/p5-Business-OnlinePayment \
		p5-Text-CSV_XS>=0:${PORTSDIR}/textproc/p5-Text-CSV_XS
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure patch

MAN3=		Business::OnlinePayment::2CheckOut.3

post-patch:
	${PERL} -pi -e 's/^our\s+([\$$\@\%]\w+)/use vars qw($$1);$$1/;' \
		-e '$$_="" if /use 5/;' \
		${WRKSRC}/2CheckOut.pm

.include <bsd.port.mk>
