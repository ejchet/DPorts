# New ports collection makefile for:	Devel-Cycle
# Date created:	   16 January 2004
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: devel/p5-Devel-Cycle/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	Devel-Cycle
PORTVERSION=	1.11
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Find memory cycles in objects

BUILD_DEPENDS=	p5-Scalar-List-Utils>=0:${PORTSDIR}/lang/p5-Scalar-List-Utils
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Devel::Cycle.3

.include <bsd.port.mk>
