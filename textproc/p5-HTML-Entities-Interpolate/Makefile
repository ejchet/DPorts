# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: textproc/p5-HTML-Entities-Interpolate/Makefile 322572 2013-07-09 20:52:07Z sunpoet $

PORTNAME=	HTML-Entities-Interpolate
PORTVERSION=	1.05
CATEGORIES=	textproc www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
EXTRACT_SUFX=	.tgz

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Call HTML::Entities::encode_entities, via a hash, within a string

LICENSE=	ART20

BUILD_DEPENDS=	p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-Tie-Function>=0:${PORTSDIR}/devel/p5-Tie-Function
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Pod>=1.45:${PORTSDIR}/devel/p5-Test-Pod

PERL_CONFIGURE=	yes

MAN3=		HTML::Entities::Interpolate.3

.include <bsd.port.mk>
