# $FreeBSD: devel/p5-Moose-Test/Makefile 324352 2013-08-07 13:20:32Z az $

PORTNAME=	Moose-Test
PORTVERSION=	0.01
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SARTAK
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	A Test Runner for the Moose test suite

BUILD_DEPENDS=	p5-Mouse>=0:${PORTSDIR}/devel/p5-Mouse \
		p5-Path-Class>=0:${PORTSDIR}/devel/p5-Path-Class
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Moose::Test.3 \
	Moose::Test::Case.3

.include <bsd.port.mk>
