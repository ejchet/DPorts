# $FreeBSD: www/p5-Apache-LogFormat-Compiler/Makefile 319786 2013-06-03 14:28:51Z kuriyama $

PORTNAME=	Apache-LogFormat-Compiler
PORTVERSION=	0.13
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to compile a log format string to perl-code

TEST_DEPENDS=	\
	p5-HTTP-Message>0:${PORTSDIR}/www/p5-HTTP-Message \
	p5-Try-Tiny>0:${PORTSDIR}/lang/p5-Try-Tiny

PERL_MODBUILD=	yes

MAN3=	Apache::LogFormat::Compiler.3

.include <bsd.port.mk>
