# $FreeBSD: devel/p5-Module-Functions/Makefile 319088 2013-05-26 01:24:21Z kuriyama $

PORTNAME=	Module-Functions
PORTVERSION=	2.1.3
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to get function list from package

RUN_DEPENDS=	\
	p5-Sub-Identify>=0.04:${PORTSDIR}/devel/p5-Sub-Identify
BUILD_DEPENDS=	${RUN_DEPENDS}

PERL_MODBUILD=	yes

MAN3=	Module::Functions.3

.include <bsd.port.mk>
