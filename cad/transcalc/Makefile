# ex:ts=8
# Ports collection makefile for:	transcalc
# Date created:			Sep 6, 2002
# Whom:				ijliao
#
# $FreeBSD: ports/cad/transcalc/Makefile,v 1.21 2012/11/17 05:54:55 svnexp Exp $
#

PORTNAME=	transcalc
PORTVERSION=	0.14
PORTREVISION=	11
CATEGORIES=	cad
MASTER_SITES=	http://transcalc.sourceforge.net/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A analysis and synthesis tool for RF and microwave transmission lines

USE_GNOME=	gtk20
GNU_CONFIGURE=	yes

MAN1=	transcalc.1

post-patch:
	@${REINPLACE_CMD} -e 's|^CFLAGS=|#CFLAGS=|g' ${WRKSRC}/configure

.include <bsd.port.mk>
