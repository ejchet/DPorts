# Created by: Andrey <gugu@zoo.rambler.ru>
# $FreeBSD: math/p5-Math-BigInt-Pari/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Math-BigInt-Pari
PORTVERSION=	1.17
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Use Math::Pari for Math::BigInt routines

BUILD_DEPENDS=	p5-Math-BigInt>=1.997:${PORTSDIR}/math/p5-Math-BigInt \
		p5-Math-Pari>=2.010709:${PORTSDIR}/math/p5-Math-Pari
RUN_DEPENDS=	p5-Math-BigInt>=1.997:${PORTSDIR}/math/p5-Math-BigInt \
		p5-Math-Pari>=2.010709:${PORTSDIR}/math/p5-Math-Pari

USES=		perl5
USE_PERL5=	configure

MAN3=		Math::BigInt::Pari.3

.include <bsd.port.mk>
