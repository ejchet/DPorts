# $FreeBSD: graphics/p5-Chart/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Chart
PORTVERSION=	2.4.6
CATEGORIES=	graphics perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:CHARTGRP
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl5 interface to build chart graphics

BUILD_DEPENDS=	p5-GD>=2:${PORTSDIR}/graphics/p5-GD
RUN_DEPENDS=	p5-GD>=2:${PORTSDIR}/graphics/p5-GD

USES=		perl5
USE_PERL5=	configure

MAN3=		Chart.3

.include <bsd.port.mk>
