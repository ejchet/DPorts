# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: devel/p5-Data-Visitor/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Data-Visitor
PORTVERSION=	0.30
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Visitor style traversal of Perl data structures

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Class-Load>=0.06:${PORTSDIR}/devel/p5-Class-Load \
		p5-Moose>=0.89:${PORTSDIR}/devel/p5-Moose \
		p5-Task-Weaken>=0:${PORTSDIR}/devel/p5-Task-Weaken \
		p5-Tie-ToObject>=0.01:${PORTSDIR}/devel/p5-Tie-ToObject \
		p5-namespace-clean>=0.19:${PORTSDIR}/devel/p5-namespace-clean
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Data-Alias>=0:${PORTSDIR}/devel/p5-Data-Alias \
		p5-Test-Requires>=0:${PORTSDIR}/devel/p5-Test-Requires

USES=		perl5
USE_PERL5=	configure

MAN3=	Data::Visitor.3 \
	Data::Visitor::Callback.3

.include <bsd.port.mk>
