# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: devel/p5-MooseX-NonMoose/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	MooseX-NonMoose
PORTVERSION=	0.22
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Easy subclassing of non-Moose classes

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

RUN_DEPENDS=	p5-Moose>=1.15:${PORTSDIR}/devel/p5-Moose
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-Test-Simple>=0.88:${PORTSDIR}/devel/p5-Test-Simple \
		p5-Test-Fatal>=0:${PORTSDIR}/devel/p5-Test-Fatal

USES=		perl5
USE_PERL5=	configure

MAN3=		MooseX::NonMoose.3 \
		MooseX::NonMoose::InsideOut.3 \
		MooseX::NonMoose::Meta::Role::Class.3 \
		MooseX::NonMoose::Meta::Role::Constructor.3

.include <bsd.port.mk>
