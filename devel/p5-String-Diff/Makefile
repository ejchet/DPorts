# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: devel/p5-String-Diff/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	String-Diff
PORTVERSION=	0.06
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Simple diff to String

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Algorithm-Diff>=0:${PORTSDIR}/devel/p5-Algorithm-Diff
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Base>=0:${PORTSDIR}/devel/p5-Test-Base \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML

USES=		perl5
USE_PERL5=	configure

MAN3=		String::Diff.3

.include <bsd.port.mk>
