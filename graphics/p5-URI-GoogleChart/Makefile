# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: graphics/p5-URI-GoogleChart/Makefile 324276 2013-08-05 15:05:29Z az $

PORTNAME=	URI-GoogleChart
PORTVERSION=	1.02
CATEGORIES=	graphics www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	URI
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Generate Google Chart URIs

BUILD_DEPENDS=	p5-URI>0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	URI::GoogleChart.3

.include <bsd.port.mk>
