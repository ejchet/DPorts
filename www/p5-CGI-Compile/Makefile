# $FreeBSD: www/p5-CGI-Compile/Makefile 318770 2013-05-22 14:43:23Z kuriyama $

PORTNAME=	CGI-Compile
PORTVERSION=	0.16
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MIYAGAWA
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to compile .cgi scripts to a code reference

RUN_DEPENDS=	\
	p5-File-pushd>0:${PORTSDIR}/devel/p5-File-pushd
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	\
	p5-Test-NoWarnings>0:${PORTSDIR}/devel/p5-Test-NoWarnings \
	p5-Test-Requires>0:${PORTSDIR}/devel/p5-Test-Requires \
	p5-CGI-Emulate-PSGI>0:${PORTSDIR}/www/p5-CGI-Emulate-PSGI
# Depending on Plack::Test causes cyclic dependencies.

PERL_CONFIGURE=	yes

MAN3=	CGI::Compile.3

.include <bsd.port.mk>
