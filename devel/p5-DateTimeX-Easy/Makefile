# Created by: Cezary Morga <cm@therek.net>
# $FreeBSD: devel/p5-DateTimeX-Easy/Makefile 324171 2013-08-02 18:21:05Z az $

PORTNAME=	DateTimeX-Easy
PORTVERSION=	0.089
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Parse a date/time string using the best method available

RUN_DEPENDS=	p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-DateTime-Format-DateParse>=0:${PORTSDIR}/devel/p5-DateTime-Format-DateParse \
		p5-DateTime-Format-Flexible>=0:${PORTSDIR}/devel/p5-DateTime-Format-Flexible \
		p5-DateTime-Format-ICal>=0:${PORTSDIR}/devel/p5-DateTime-Format-ICal \
		p5-DateTime-Format-Natural>=0:${PORTSDIR}/devel/p5-DateTime-Format-Natural \
		p5-TimeDate>=0:${PORTSDIR}/devel/p5-TimeDate
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-Test-Most>=0:${PORTSDIR}/devel/p5-Test-Most

USES=		perl5
USE_PERL5=	configure

MAN3=	DateTimeX::Easy.3 \
	DateTimeX::Easy::DateParse.3

.include <bsd.port.mk>
