# New ports collection makefile for:	p5-Graph-SocialMap
# Date created:				31 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: graphics/p5-Graph-SocialMap/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	Graph-SocialMap
PORTVERSION=	0.12
PORTREVISION=	6
CATEGORIES=	graphics perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Easy tool to create social network maps

BUILD_DEPENDS=	p5-Spiffy>=0:${PORTSDIR}/devel/p5-Spiffy \
		p5-Graph>=0:${PORTSDIR}/math/p5-Graph \
		p5-Graph-Writer-GraphViz>=0:${PORTSDIR}/graphics/p5-Graph-Writer-GraphViz \
		p5-Quantum-Superpositions>=0:${PORTSDIR}/lang/p5-Quantum-Superpositions \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=	Graph::SocialMap.3

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
