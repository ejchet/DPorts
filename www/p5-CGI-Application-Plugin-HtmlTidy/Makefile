# New ports collection makefile for:	www/p5-CGI-Application-Plugin-HtmlTidy
# Date created:				14 September 2005
# Whom:					George Hartzell <hartzell@alerce.com>
#
# $FreeBSD: www/p5-CGI-Application-Plugin-HtmlTidy/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	CGI-Application-Plugin-HtmlTidy
PORTVERSION=	1.05
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Add HTML::Tidy support to CGI::Application

BUILD_DEPENDS=	p5-CGI-Application>4.01:${PORTSDIR}/www/p5-CGI-Application \
		p5-CGI-Application-Plugin-DevPopup>=0:${PORTSDIR}/www/p5-CGI-Application-Plugin-DevPopup \
		p5-HTML-Tidy>=1.08:${PORTSDIR}/textproc/p5-HTML-Tidy
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	CGI::Application::Plugin::HtmlTidy.3

.include <bsd.port.mk>
