# New ports collection makefile for:	q-graph
# Date created:		14 August 2003
# Whom:			ag@muwiinfa.geschichte.uni-mainz.de Albert Graef
#
# $FreeBSD: graphics/q-graph/Makefile 320473 2013-06-10 13:32:07Z gahr $
#

PORTNAME=	graph
PORTVERSION=	1.8
PORTREVISION=	5
CATEGORIES=	graphics
MASTER_SITES=	SF/q-lang/${PORTNAME}/${PORTVERSION}
PKGNAMEPREFIX=	q-

MAINTAINER=	gahr@FreeBSD.org
COMMENT=	Q-Graph -- graph library and editor for the Q language

DEPRECATED=	Q-Lang is no longer supported. See lang/pure instead
EXPIRATION_DATE=2013-08-10 

LIB_DEPENDS=	q.8:${PORTSDIR}/lang/q
RUN_DEPENDS=	${LOCALBASE}/lib/bwidget/init.tcl:${PORTSDIR}/x11-toolkits/bwidget

DATADIR=	${PREFIX}/share/q

GNU_CONFIGURE=	yes

.include <bsd.port.mk>
