# Created by: George Hartzell <hartzell@alerce.com>
# $FreeBSD: www/p5-CGI-Application-Plugin-LogDispatch/Makefile 324175 2013-08-02 21:38:09Z mat $

PORTNAME=	CGI-Application-Plugin-LogDispatch
PORTVERSION=	1.02
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Plugin that adds Log::Dispatch support to CGI::Application

BUILD_DEPENDS=	p5-CGI-Application>=0:${PORTSDIR}/www/p5-CGI-Application \
		p5-Log-Dispatch>=0:${PORTSDIR}/devel/p5-Log-Dispatch \
		p5-UNIVERSAL-require>=0:${PORTSDIR}/devel/p5-UNIVERSAL-require
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=	CGI::Application::Plugin::LogDispatch.3

.include <bsd.port.mk>
