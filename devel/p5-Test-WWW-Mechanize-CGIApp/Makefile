# Created by: George Hartzell <hartzell@alerce.com>
# $FreeBSD: devel/p5-Test-WWW-Mechanize-CGIApp/Makefile 324171 2013-08-02 18:21:05Z az $

PORTNAME=	Test-WWW-Mechanize-CGIApp
PORTVERSION=	0.05
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Test::WWW::Mechanize for CGIApp

RUN_DEPENDS=	p5-CGI-Application>=0:${PORTSDIR}/www/p5-CGI-Application \
		p5-Test-WWW-Mechanize>=1.14:${PORTSDIR}/devel/p5-Test-WWW-Mechanize \
		p5-HTTP-Request-AsCGI>=0:${PORTSDIR}/www/p5-HTTP-Request-AsCGI
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Test::WWW::Mechanize::CGIApp.3

.include <bsd.port.mk>
