# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@sunpoet.net>
# $FreeBSD: textproc/p5-Validator-Custom/Makefile 321521 2013-06-22 02:21:07Z sunpoet $

PORTNAME=	Validator-Custom
PORTVERSION=	0.1800
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:KIMOTO
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/00$//}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Validator::Custom for simple data validation

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Object-Simple>=3.0616:${PORTSDIR}/devel/p5-Object-Simple
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-JSON>=2:${PORTSDIR}/converters/p5-JSON \
		p5-Test-Pod>=1.22:${PORTSDIR}/devel/p5-Test-Pod

PERL_CONFIGURE=	yes

MAN3=		Validator::Custom.3 \
		Validator::Custom::Guide.3 \
		Validator::Custom::Guide::Ja.3 \
		Validator::Custom::Result.3

.include <bsd.port.mk>
