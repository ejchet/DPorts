# Created by: chinsan <chinsan.tw@gmail.com>
# $FreeBSD: textproc/p5-CSS/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	CSS
PORTVERSION=	1.09
CATEGORIES=	textproc www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:IAMCAL
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Object oriented access to Cascading Style Sheets (CSS)

BUILD_DEPENDS=	p5-Parse-RecDescent>=1.94:${PORTSDIR}/devel/p5-Parse-RecDescent

MAN3=	CSS.3 CSS::Value.3 CSS::Parse::Compiled.3 CSS::Property.3 CSS::Parse::Heavy.3 \
	CSS::Parse::PRDGrammar.3 CSS::Style.3 CSS::Parse::Lite.3 CSS::Selector.3 \
	CSS::Adaptor::Debug.3 CSS::Adaptor::Pretty.3 CSS::Parse.3 CSS::Adaptor.3

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
