# ex:ts=8
# New ports collection makefile for:	sxm
# Date created:		Jan 8, 2001
# Whom:			Ying-Chieh Liao <ijliao@FreeBSD.org>
#
# $FreeBSD: ports/lang/sxm/Makefile,v 1.10 2012/11/17 05:58:57 svnexp Exp $
#

PORTNAME=	sxm
PORTVERSION=	1.1
PORTREVISION=	1
CATEGORIES=	lang scheme
MASTER_SITES=	http://www.malgil.com/sxm/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Another implementation of Scheme

USE_GMAKE=	yes
ALL_TARGET=	all image Formlist

MAN1=		sxm.1 sxi.1

post-patch:
	@${REINPLACE_CMD} -e "s|/usr/local|${PREFIX}|g ; \
		s,^CC,#CC,g" ${WRKSRC}/Makefile

.include <bsd.port.mk>
