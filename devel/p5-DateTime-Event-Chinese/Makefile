# New ports collection makefile for:	p5-DateTime-Event-Chinese
# Date created:		2007-11-06
# Whom:			Masahiro Teramoto <markun@onohara.to>
#
# $FreeBSD: ports/devel/p5-DateTime-Event-Chinese/Makefile,v 1.4 2012/11/17 05:56:11 svnexp Exp $
#

PORTNAME=	DateTime-Event-Chinese
PORTVERSION=	1.00
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DMAKI
PKGNAMEPREFIX=	p5-

MAINTAINER=	markun@onohara.to
COMMENT=	DateTime Extension for Calculating Important Chinese Dates

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-DateTime-Astro>=0:${PORTSDIR}/devel/p5-DateTime-Astro \
		p5-Math-Round>=0:${PORTSDIR}/math/p5-Math-Round
RUN_DEPENDS=	p5-DateTime-Astro>=0:${PORTSDIR}/devel/p5-DateTime-Astro \
		p5-Math-Round>=0:${PORTSDIR}/math/p5-Math-Round

PERL_CONFIGURE=	yes

MAN3=		DateTime::Event::Chinese.3

.include <bsd.port.mk>
