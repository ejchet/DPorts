# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: misc/p5-Geo-Coder-Bing/Makefile 316377 2013-04-23 17:10:23Z sunpoet $

PORTNAME=	Geo-Coder-Bing
PORTVERSION=	0.11
CATEGORIES=	misc geography perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Geocode addresses with the Bing Maps API

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-JSON>=2:${PORTSDIR}/converters/p5-JSON \
		p5-JSON-XS>=2:${PORTSDIR}/converters/p5-JSON-XS \
		p5-LWP-Protocol-https>=6.02:${PORTSDIR}/www/p5-LWP-Protocol-https \
		p5-URI>=1.36:${PORTSDIR}/net/p5-URI \
		p5-libwww>=6.02:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Geo::Coder::Bing.3

.include <bsd.port.mk>
