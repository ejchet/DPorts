# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: textproc/p5-Template-Plugin-Filter-Minify-JavaScript/Makefile 316588 2013-04-26 09:11:27Z sunpoet $

PORTNAME=	Template-Plugin-Filter-Minify-JavaScript
PORTVERSION=	0.93
CATEGORIES=	textproc www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	JavaScript::Minifier filter for Template Toolkit

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-JavaScript-Minifier>=0:${PORTSDIR}/textproc/p5-JavaScript-Minifier \
		p5-Module-Signature>=0:${PORTSDIR}/security/p5-Module-Signature \
		p5-Template-Toolkit>=2:${PORTSDIR}/www/p5-Template-Toolkit
RUN_DEPENDS=	p5-JavaScript-Minifier>=0:${PORTSDIR}/textproc/p5-JavaScript-Minifier \
		p5-Template-Toolkit>=2:${PORTSDIR}/www/p5-Template-Toolkit

PERL_CONFIGURE=	yes

MAN3=		Template::Plugin::Filter::Minify::JavaScript.3

.include <bsd.port.mk>
