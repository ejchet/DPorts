# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: devel/p5-MooseX-Has-Options/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	MooseX-Has-Options
PORTVERSION=	0.003
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	MooseX
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	MooseX::Has::Options - Succinct options for Moose

BUILD_DEPENDS=	p5-Class-Load>=0:${PORTSDIR}/devel/p5-Class-Load \
		p5-List-MoreUtils>=0:${PORTSDIR}/lang/p5-List-MoreUtils \
		p5-Package-Stash>=0.18:${PORTSDIR}/devel/p5-Package-Stash \
		p5-String-RewritePrefix>=0:${PORTSDIR}/textproc/p5-String-RewritePrefix \
		p5-Moose>=0:${PORTSDIR}/devel/p5-Moose \
		p5-namespace-autoclean>=0:${PORTSDIR}/devel/p5-namespace-autoclean
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Most>=0:${PORTSDIR}/devel/p5-Test-Most

USES=		perl5
USE_PERL5=	configure

MAN3=	MooseX::Has::Options.3 \
	MooseX::Has::Options::Handler::Accessors.3 \
	MooseX::Has::Options::Handler::NativeTypes.3 \
	MooseX::Has::Options::Handler::NoInit.3

.include <bsd.port.mk>
