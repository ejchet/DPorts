# Created by: George Hartzell <hartzell@alerce.com>
# $FreeBSD: www/p5-CGI-Application-Plugin-Authentication/Makefile 324175 2013-08-02 21:38:09Z mat $

PORTNAME=	CGI-Application-Plugin-Authentication
PORTVERSION=	0.20
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Support for authenticating requests in CGI::Application

RUN_DEPENDS=	p5-Apache-Htpasswd>=0:${PORTSDIR}/security/p5-Apache-Htpasswd \
		p5-CGI-Application>=4:${PORTSDIR}/www/p5-CGI-Application \
		p5-Digest-SHA1>=0:${PORTSDIR}/security/p5-Digest-SHA1 \
		p5-UNIVERSAL-require>=0:${PORTSDIR}/devel/p5-UNIVERSAL-require
BUILD_DEPENDS:=	${RUN_DEPENDS}
BUILD_DEPENDS+=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Task-Weaken>=0:${PORTSDIR}/devel/p5-Task-Weaken \
		p5-Test-Warn>=0.11:${PORTSDIR}/devel/p5-Test-Warn

USES=		perl5
USE_PERL5=	modbuild

MAN3=	CGI::Application::Plugin::Authentication::Display.3 \
	CGI::Application::Plugin::Authentication::Display::Basic.3 \
	CGI::Application::Plugin::Authentication::Display::Classic.3 \
	CGI::Application::Plugin::Authentication::Driver.3 \
	CGI::Application::Plugin::Authentication::Driver::Filter::strip.3 \
	CGI::Application::Plugin::Authentication::Driver::DBI.3 \
	CGI::Application::Plugin::Authentication::Driver::Filter::sha1.3 \
	CGI::Application::Plugin::Authentication::Driver::Filter::lc.3 \
	CGI::Application::Plugin::Authentication::Store::Session.3 \
	CGI::Application::Plugin::Authentication.3 \
	CGI::Application::Plugin::Authentication::Driver::Filter::uc.3 \
	CGI::Application::Plugin::Authentication::Driver::Filter::crypt.3 \
	CGI::Application::Plugin::Authentication::Store.3 \
	CGI::Application::Plugin::Authentication::Driver::Generic.3 \
	CGI::Application::Plugin::Authentication::Store::Cookie.3 \
	CGI::Application::Plugin::Authentication::Driver::Authen::Simple.3 \
	CGI::Application::Plugin::Authentication::Driver::Filter::md5.3 \
	CGI::Application::Plugin::Authentication::Driver::HTPasswd.3 \
	CGI::Application::Plugin::Authentication::Driver::Dummy.3

.include <bsd.port.mk>
