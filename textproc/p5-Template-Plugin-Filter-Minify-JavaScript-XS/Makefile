# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: textproc/p5-Template-Plugin-Filter-Minify-JavaScript-XS/Makefile 316589 2013-04-26 09:11:38Z sunpoet $

PORTNAME=	Template-Plugin-Filter-Minify-JavaScript-XS
PORTVERSION=	0.93
CATEGORIES=	textproc www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	JavaScript::Minifier::XS filter for Template Toolkit

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-JavaScript-Minifier-XS>=0:${PORTSDIR}/textproc/p5-JavaScript-Minifier-XS \
		p5-Module-Signature>=0:${PORTSDIR}/security/p5-Module-Signature \
		p5-Template-Toolkit>=2:${PORTSDIR}/www/p5-Template-Toolkit
RUN_DEPENDS=	p5-JavaScript-Minifier-XS>=0:${PORTSDIR}/textproc/p5-JavaScript-Minifier-XS \
		p5-Template-Toolkit>=2:${PORTSDIR}/www/p5-Template-Toolkit

PERL_CONFIGURE=	yes

MAN3=		Template::Plugin::Filter::Minify::JavaScript::XS.3

.include <bsd.port.mk>
