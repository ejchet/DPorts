# Created by: Masahiro Teramoto <markun@onohara.to>
# $FreeBSD: www/p5-WebService-BuzzurlAPI/Makefile 315981 2013-04-17 16:02:36Z crees $

PORTNAME=	WebService-BuzzurlAPI
PORTVERSION=	0.02
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:HOLLY
PKGNAMEPREFIX=	p5-

MAINTAINER=	markun@onohara.to
COMMENT=	Buzzurl WebService API

BUILD_DEPENDS=	p5-Class-Accessor>=0.25:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-YAML-Syck>=0.21:${PORTSDIR}/textproc/p5-YAML-Syck \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-Readonly>=1.01:${PORTSDIR}/devel/p5-Readonly \
		p5-UNIVERSAL-require>=0.10:${PORTSDIR}/devel/p5-UNIVERSAL-require
RUN_DEPENDS=	p5-Class-Accessor>=0.25:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-YAML-Syck>=0.21:${PORTSDIR}/textproc/p5-YAML-Syck \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-Readonly>=1.01:${PORTSDIR}/devel/p5-Readonly \
		p5-UNIVERSAL-require>=0.10:${PORTSDIR}/devel/p5-UNIVERSAL-require

PERL_CONFIGURE=	yes

MAN3=		WebService::BuzzurlAPI.3 \
		WebService::BuzzurlAPI::Util.3 \
		WebService::BuzzurlAPI::Response.3 \
		WebService::BuzzurlAPI::Request.3

.include <bsd.port.mk>
