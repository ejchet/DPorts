# Created by: George Hartzell <hartzell@alerce.com>
# $FreeBSD: ports/www/p5-CGI-Application-Plugin-DevPopup/Makefile,v 1.15 2013/01/21 10:16:12 svnexp Exp $

PORTNAME=	CGI-Application-Plugin-DevPopup
PORTVERSION=	1.08
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	culot@FreeBSD.org
COMMENT=	Runtime cgiapp info in a popup window

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-CGI-Application>=4.01:${PORTSDIR}/www/p5-CGI-Application \
		p5-HTML-Template>0:${PORTSDIR}/www/p5-HTML-Template \
		p5-IO-stringy>0:${PORTSDIR}/devel/p5-IO-stringy
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	CGI::Application::Plugin::DevPopup.3 \
	CGI::Application::Plugin::DevPopup::HTTPHeaders.3 \
	CGI::Application::Plugin::DevPopup::Timing.3 \
	CGI::Application::Plugin::DevPopup::Log.3

.include <bsd.port.mk>
