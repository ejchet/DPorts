# New ports collection makefile for:	Devel::BeginLift
# Date created:		22 Nov 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Devel-BeginLift/Makefile,v 1.5 2012/11/17 05:56:13 svnexp Exp $
#

PORTNAME=	Devel-BeginLift
PORTVERSION=	0.001003
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to make selected sub calls evaluate at compile time

RUN_DEPENDS=	\
	p5-B-Hooks-OP-Check-EntersubForCV>=0.03:${PORTSDIR}/devel/p5-B-Hooks-OP-Check-EntersubForCV
BUILD_DEPENDS:=	${RUN_DEPENDS} \
	p5-ExtUtils-Depends>0:${PORTSDIR}/devel/p5-ExtUtils-Depends

PERL_CONFIGURE=	yes

MAN3=	Devel::BeginLift.3

.include <bsd.port.mk>
