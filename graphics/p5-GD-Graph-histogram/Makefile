# Created by: Fernan Aguero <fernan@iib.unsam.edu.ar>
# $FreeBSD: graphics/p5-GD-Graph-histogram/Makefile 324171 2013-08-02 18:21:05Z az $

PORTNAME=	GD-Graph-histogram
PORTVERSION=	1.1
PORTREVISION=	4
CATEGORIES=	graphics perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:WHIZDOG
PKGNAMEPREFIX=	p5-
DISTNAME=	GDGraph-histogram-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Histogram plotting module for perl5

BUILD_DEPENDS=	p5-GD-Graph>=0:${PORTSDIR}/graphics/p5-GD-Graph \
		p5-Test-Simple>=0:${PORTSDIR}/devel/p5-Test-Simple
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		GD::Graph::histogram.3

.include <bsd.port.mk>
