# Created by: Alex Kapranoff <alex@kapranoff.ru>
# $FreeBSD: devel/p5-Test-NoWarnings/Makefile 317876 2013-05-11 13:49:05Z bapt $

PORTNAME=	Test-NoWarnings
PORTVERSION=	1.04
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lippe@FreeBSD.org
COMMENT=	Hide and store warnings while running test scripts

TEST_DEPENDS=	p5-Test-Tester>=0.10.7:${PORTSDIR}/devel/p5-Test-Tester

PERL_CONFIGURE=	yes

MAN3=		Test::NoWarnings.3

OPTIONS_DEFINE=	DEVEL_STACKTRACE
DEVEL_STACKTRACE_DESC=	Stack trace support

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDEVEL_STACKTRACE}
BUILD_DEPENDS+=	p5-Devel-StackTrace>=0:${PORTSDIR}/devel/p5-Devel-StackTrace
RUN_DEPENDS+=	p5-Devel-StackTrace>=0:${PORTSDIR}/devel/p5-Devel-StackTrace
.endif

.include <bsd.port.mk>
