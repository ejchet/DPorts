# Created by: Cheng-Lung Sung <clsung@dragon2.net>
# $FreeBSD: textproc/p5-Template-Magic/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Template-Magic
PORTVERSION=	1.39
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl Module with magic merger of runtime values with templates

BUILD_DEPENDS=	p5-IO-Util>=0:${PORTSDIR}/devel/p5-IO-Util \
		p5-OOTools>=0:${PORTSDIR}/devel/p5-OOTools \
		p5-HTML-TableTiler>=0:${PORTSDIR}/www/p5-HTML-TableTiler
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Template::Magic.3 \
		Bundle::Template::Magic.3 \
		Template::Magic::HTML.3 \
		Template::Magic::QuickStart.3 \
		Template::Magic::Zone.3

.include <bsd.port.mk>
