# Created by: Frederic Culot <culot@FreeBSD.org>
# $FreeBSD: devel/p5-MooseX-ChainedAccessors/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	MooseX-ChainedAccessors
PORTVERSION=	0.02
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:PERLER
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Accessor class for chained accessors with Moose

RUN_DEPENDS=	p5-Moose>=0:${PORTSDIR}/devel/p5-Moose \
		p5-Try-Tiny>=0:${PORTSDIR}/lang/p5-Try-Tiny
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=		Moose::Meta::Attribute::Custom::Trait::Chained.3 \
		MooseX::ChainedAccessors.3 \
		MooseX::ChainedAccessors::Accessor.3 \
		MooseX::Traits::Attribute::Chained.3

.include <bsd.port.mk>
