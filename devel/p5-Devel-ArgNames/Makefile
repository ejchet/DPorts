# Created by: Christopher Key <cjk32@cam.ac.uk>
# $FreeBSD: devel/p5-Devel-ArgNames/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Devel-ArgNames
PORTVERSION=	0.03
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Figure out the names of variables passed into subroutines

BUILD_DEPENDS=	p5-PadWalker>=0:${PORTSDIR}/devel/p5-PadWalker
RUN_DEPENDS=	p5-PadWalker>=0:${PORTSDIR}/devel/p5-PadWalker
TEST_DEPENDS=	p5-Test-use-ok>=0:${PORTSDIR}/devel/p5-Test-use-ok

USES=		perl5
USE_PERL5=	configure

MAN3=		Devel::ArgNames.3

.include <bsd.port.mk>
