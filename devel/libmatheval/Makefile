# New ports collection makefile for:	libmatheval
# Date created:				4 July 2004
# Whom:					Dmitry Sivachenko <demon@FreeBSD.org>
#
# $FreeBSD: devel/libmatheval/Makefile 314640 2013-03-19 13:04:30Z eadler $
#

PORTNAME=	libmatheval
PORTVERSION=	1.1.10
CATEGORIES=	devel math
MASTER_SITES=	GNU
MASTER_SITE_SUBDIR=	${PORTNAME}

MAINTAINER=	demon@FreeBSD.org
COMMENT=	A library of procedures for evaluating mathematical functions

BUILD_DEPENDS=	flex>0:${PORTSDIR}/textproc/flex
LIB_DEPENDS=	guile.21:${PORTSDIR}/lang/guile

GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	MAKEINFO="makeinfo --no-split"
USE_LDCONFIG=	yes
USES=	pathfix
CFLAGS+=	-I${LOCALBASE}/include -L${LOCALBASE}/lib

INFO=		libmatheval

post-patch:
	${RM} ${WRKSRC}/doc/libmatheval.info

.include <bsd.port.mk>
