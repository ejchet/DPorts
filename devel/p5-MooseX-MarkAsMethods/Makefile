# New ports collection makefile for:	p5-MooseX-MarkAsMethods
# Date created:		2011-11-03
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: devel/p5-MooseX-MarkAsMethods/Makefile 321187 2013-06-18 13:49:02Z az $
#

PORTNAME=	MooseX-MarkAsMethods
PORTVERSION=	0.15
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Mark overload code symbols as methods

BUILD_DEPENDS=	p5-B-Hooks-EndOfScope>=0:${PORTSDIR}/devel/p5-B-Hooks-EndOfScope \
		p5-Moose>=0.94:${PORTSDIR}/devel/p5-Moose \
		p5-namespace-autoclean>=0.12:${PORTSDIR}/devel/p5-namespace-autoclean
RUN_DEPENDS=	p5-B-Hooks-EndOfScope>=0:${PORTSDIR}/devel/p5-B-Hooks-EndOfScope \
		p5-Moose>=0.94:${PORTSDIR}/devel/p5-Moose \
		p5-namespace-autoclean>=0.12:${PORTSDIR}/devel/p5-namespace-autoclean

PERL_CONFIGURE=	yes

MAN3=		MooseX::MarkAsMethods.3

.include <bsd.port.mk>
