# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: devel/p5-MooseX-Aliases/Makefile 324276 2013-08-05 15:05:29Z az $

PORTNAME=	MooseX-Aliases
PORTVERSION=	0.10
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DOY
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Easy aliasing of methods and attributes in Moose

COMMON_DEPENDS=	p5-Moose>=1.09:${PORTSDIR}/devel/p5-Moose
BUILD_DEPENDS=	${COMMON_DEPENDS}
RUN_DEPENDS=	${COMMON_DEPENDS}
TEST_DEPENDS=	p5-Test-Fatal>=0.003:${PORTSDIR}/devel/p5-Test-Fatal \
		p5-Test-Simple>=0.88:${PORTSDIR}/devel/p5-Test-Simple \
		p5-Test-Requires>=0:${PORTSDIR}/devel/p5-Test-Requires

USES=		perl5
USE_PERL5=	configure

MAN3=	MooseX::Aliases.3 \
	MooseX::Aliases::Meta::Trait::Attribute.3 \
	MooseX::Aliases::Meta::Trait::Class.3 \
	MooseX::Aliases::Meta::Trait::Constructor.3 \
	MooseX::Aliases::Meta::Trait::Method.3 \
	MooseX::Aliases::Meta::Trait::Role.3 \
	MooseX::Aliases::Meta::Trait::Role::ApplicationToClass.3 \
	MooseX::Aliases::Meta::Trait::Role::ApplicationToRole.3 \
	MooseX::Aliases::Meta::Trait::Role::Composite.3

.include <bsd.port.mk>
