# Created by: Espen Tagestad <espen@tagestad.no>
# $FreeBSD: ports/www/p5-CGI-Application-Plugin-DBH/Makefile,v 1.11 2013/02/12 17:57:19 svnexp Exp $

PORTNAME=	CGI-Application-Plugin-DBH
PORTVERSION=	4.01
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lippe@FreeBSD.org
COMMENT=	Easy DBI access from CGI::Application

BUILD_DEPENDS=	p5-CGI-Application>=0:${PORTSDIR}/www/p5-CGI-Application \
		p5-DBI>=0:${PORTSDIR}/databases/p5-DBI \
		p5-Test-MockObject>=1.20120301:${PORTSDIR}/devel/p5-Test-MockObject
RUN_DEPENDS:=	${BUILD_DEPENDS}

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}
PERL_MODBUILD=	yes

MAN3=		CGI::Application::Plugin::DBH.3

.include <bsd.port.mk>
