# New ports collection makefile for:	p5-Test-Distribution
# Date created:		2008-02-11
# Whom:			Felippe de Meirelles Motta <lippemail@gmail.com>
#
# $FreeBSD: ports/devel/p5-Test-Distribution/Makefile,v 1.5 2012/11/17 05:56:32 svnexp Exp $
#

PORTNAME=	Test-Distribution
PORTVERSION=	2.00
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lippe@FreeBSD.org
COMMENT=	Test::Distribution - Perform tests on all modules of a distribution

BUILD_DEPENDS+=	p5-File-Find-Rule>=0:${PORTSDIR}/devel/p5-File-Find-Rule \
		p5-Pod-Coverage>=0:${PORTSDIR}/devel/p5-Pod-Coverage \
		p5-Test-Pod>=0:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=0:${PORTSDIR}/devel/p5-Test-Pod-Coverage
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes

MAN3=		Test::Distribution.3

.include <bsd.port.mk>
