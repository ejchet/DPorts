# Created by: Lars Thegler <lars@thegler.dk>
# $FreeBSD: devel/p5-Log-Dispatch-Perl/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Log-Dispatch-Perl
PORTVERSION=	0.04
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Log::Dispatch plug-in using core Perl functions for logging

BUILD_DEPENDS=	p5-Log-Dispatch>=0:${PORTSDIR}/devel/p5-Log-Dispatch \
		p5-Test-Simple>=0:${PORTSDIR}/devel/p5-Test-Simple
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Log::Dispatch::Perl.3

.include <bsd.port.mk>
