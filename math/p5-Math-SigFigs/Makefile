# New ports collection makefile for:	p5-Math-SigFigs
# Date created:		2010-03-04
# Whom:			Steve Wills <steve@mouf.net>
#
# $FreeBSD: ports/math/p5-Math-SigFigs/Makefile,v 1.4 2012/11/17 05:59:26 svnexp Exp $
#

PORTNAME=	Math-SigFigs
PORTVERSION=	1.09
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Do math with correct handling of significant figures

BUILD_DEPENDS=	p5-Test-Pod>=0:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=0:${PORTSDIR}/devel/p5-Test-Pod-Coverage
RUN_DEPENDS=	p5-Test-Pod>=0:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=0:${PORTSDIR}/devel/p5-Test-Pod-Coverage

PERL_CONFIGURE=	yes

MAN3=	Math::SigFigs.3

.include <bsd.port.mk>
