# Created by: ijliao
# $FreeBSD: astro/p5-Astro-ADS/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Astro-ADS
PORTVERSION=	1.20.7
CATEGORIES=	astro perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	Astro
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	OO Perl interface to the ADS abstract service

BUILD_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww

USES=		perl5
USE_PERL5=	configure

MAN1=	adsquery.1
MAN3=	Astro::ADS.3 Astro::ADS::Query.3 Astro::ADS::Result.3 Astro::ADS::Result::Paper.3

.include <bsd.port.mk>
