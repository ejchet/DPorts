# $FreeBSD: www/p5-Plack-Handler-CLI/Makefile 319085 2013-05-26 01:03:04Z kuriyama $

PORTNAME=	Plack-Handler-CLI
PORTVERSION=	0.05
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for command line interface to PSGI applications

RUN_DEPENDS=	\
	p5-Mouse>0:${PORTSDIR}/devel/p5-Mouse \
	p5-Plack>=0.99:${PORTSDIR}/www/p5-Plack \
	p5-URI>0:${PORTSDIR}/net/p5-URI
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	\
	p5-HTTP-Request-AsCGI>0:${PORTSDIR}/www/p5-HTTP-Request-AsCGI \
	p5-Test-Requires>0:${PORTSDIR}/devel/p5-Test-Requires \
	p5-Test-TCP>0:${PORTSDIR}/devel/p5-Test-TCP \
	p5-Router-Simple>0:${PORTSDIR}/www/p5-Router-Simple

PERL_MODBUILD=	yes

MAN3=	Plack::Handler::CLI.3

.include <bsd.port.mk>
