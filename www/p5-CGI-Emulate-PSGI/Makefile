# $FreeBSD: ports/www/p5-CGI-Emulate-PSGI/Makefile,v 1.11 2012/11/17 06:02:45 svnexp Exp $

PORTNAME=	CGI-Emulate-PSGI
PORTVERSION=	0.15
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MIYAGAWA
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension of PSGI adapter for CGI

RUN_DEPENDS=	\
	p5-libwww>0:${PORTSDIR}/www/p5-libwww
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	CGI::Emulate::PSGI.3 \
	CGI::Parse::PSGI.3

.include <bsd.port.mk>
