# $FreeBSD: devel/p5-MooseX-Types-LoadableClass/Makefile 324224 2013-08-04 12:39:45Z az $

PORTNAME=	MooseX-Types-LoadableClass
PORTVERSION=	0.008
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:BOBTFISH
PKGNAMEPREFIX=	p5-

MAINTAINER=	az@FreeBSD.org
COMMENT=	ClassName type constraint with coercion to load the class

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

RUN_DEPENDS=	p5-Class-Load>=0.06:${PORTSDIR}/devel/p5-Class-Load \
		p5-Moose>=0:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-Types>=0.22:${PORTSDIR}/devel/p5-MooseX-Types \
		p5-namespace-clean>=0:${PORTSDIR}/devel/p5-namespace-clean

BUILD_DEPENDS:=	${RUN_DEPENDS}

TEST_DEPENDS=	p5-Moose>=0:${PORTSDIR}/devel/p5-Moose

USES=		perl5
USE_PERL5=	configure

MAN3=	MooseX::Types::LoadableClass.3

.include <bsd.port.mk>
