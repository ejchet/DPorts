# New ports collection makefile for:	graphics/p5-Imager-Graph
# Date created:				11 Feb 2005
# Whom:					Yuan-Chung Hsiao <ychsiao@ychsiao.org>
#
# $FreeBSD: ports/graphics/p5-Imager-Graph/Makefile,v 1.12 2012/11/17 05:58:17 svnexp Exp $
#

PORTNAME=	Imager-Graph
PORTVERSION=	0.10
CATEGORIES=	graphics perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ychsiao@ychsiao.org
COMMENT=	Perl extension for producing Graphs using the Imager library

BUILD_DEPENDS=	p5-Imager>=0.75:${PORTSDIR}/graphics/p5-Imager
RUN_DEPENDS=	p5-Imager>=0.75:${PORTSDIR}/graphics/p5-Imager

PERL_CONFIGURE=	yes

MAN3=		Imager::Graph.3 \
		Imager::Graph::Area.3 \
		Imager::Graph::Bar.3 \
		Imager::Graph::Column.3 \
		Imager::Graph::Horizontal.3 \
		Imager::Graph::Line.3 \
		Imager::Graph::Pie.3 \
		Imager::Graph::StackedColumn.3 \
		Imager::Graph::Util.3 \
		Imager::Graph::Vertical.3

.include <bsd.port.mk>
