# Created by: Aaron Dalton <aaron@FreeBSD.org>
# $FreeBSD: devel/p5-Expect-Simple/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Expect-Simple
PORTVERSION=	0.04
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Wrapper around the Expect module

BUILD_DEPENDS=	p5-Expect>=0:${PORTSDIR}/lang/p5-Expect
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=		Expect::Simple.3

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
