# $FreeBSD: ports/www/p5-LWP-Authen-OAuth/Makefile,v 1.4 2013/02/18 00:08:20 svnexp Exp $

PORTNAME=	LWP-Authen-OAuth
PORTVERSION=	1.02
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to generate signed OAuth requests

RUN_DEPENDS=	\
	p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
	p5-URI>0:${PORTSDIR}/net/p5-URI
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	LWP::Authen::OAuth.3

.include <bsd.port.mk>
