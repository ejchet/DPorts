# Created by: George Hartzell <hartzell@alerce.com>
# $FreeBSD: www/p5-CGI-Application-Plugin-HTMLPrototype/Makefile 324175 2013-08-02 21:38:09Z mat $

PORTNAME=	CGI-Application-Plugin-HTMLPrototype
PORTVERSION=	0.20
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Access to the prototype JavaScript library using HTML::Prototype

BUILD_DEPENDS=	p5-CGI-Application>=0:${PORTSDIR}/www/p5-CGI-Application \
		p5-HTML-Prototype>=0:${PORTSDIR}/www/p5-HTML-Prototype
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=	CGI::Application::Plugin::HTMLPrototype.3

.include <bsd.port.mk>
