# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: www/p5-Any-Template/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Any-Template
PORTVERSION=	1.015
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Provide a consistent interface to a wide array of templating languages

BUILD_DEPENDS=	p5-Log-Trace>0:${PORTSDIR}/devel/p5-Log-Trace
RUN_DEPENDS=	p5-Log-Trace>0:${PORTSDIR}/devel/p5-Log-Trace
TEST_DEPENDS=	p5-Test-Assertions>0:${PORTSDIR}/devel/p5-Test-Assertions

USES=		perl5
USE_PERL5=	configure

MAN3=	Any::Template.3 Any::Template::Backend.3 \
	Any::Template::Backend::HTML::Template.3 \
	Any::Template::Backend::TemplateToolkit.3 \
	Any::Template::Backend::Text::MicroMason.3 \
	Any::Template::Backend::Text::Template.3

.include <bsd.port.mk>
