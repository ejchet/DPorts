# $FreeBSD: www/p5-Starman/Makefile 324555 2013-08-10 16:53:41Z kuriyama $

PORTNAME=	Starman
PORTVERSION=	0.4003
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MIYAGAWA
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for high-performance preforking PSGI web server

RUN_DEPENDS=	\
	p5-Data-Dump>0:${PORTSDIR}/devel/p5-Data-Dump \
	p5-HTTP-Parser-XS>0:${PORTSDIR}/www/p5-HTTP-Parser-XS \
	p5-libwww>0:${PORTSDIR}/www/p5-libwww \
	p5-Net-Server>=2.007:${PORTSDIR}/net/p5-Net-Server \
	p5-Plack>=0.9971:${PORTSDIR}/www/p5-Plack
BUILD_DEPENDS:=	${RUN_DEPENDS} \
	p5-Module-Build-Tiny>0:${PORTSDIR}/devel/p5-Module-Build-Tiny
TEST_DEPENDS=	\
	p5-Test-Requires>0:${PORTSDIR}/devel/p5-Test-Requires \
	p5-Test-TCP>=2.00:${PORTSDIR}/devel/p5-Test-TCP
# TODO: maybe need p5-libwww

USES=	perl5
USE_PERL5=	modbuild
USE_RC_SUBR=	starman

MAN1=	starman.1
MAN3=	HTTP::Server::PSGI::Net::Server::PreFork.3 \
	Plack::Handler::Starman.3 \
	Starman.3 \
	Starman::Server.3

.include <bsd.port.mk>
