#Created by: Michael Johnson <ahze@FreeBSD.org>
# $FreeBSD: graphics/poppler-data/Makefile 314769 2013-03-20 22:02:44Z mezz $
#   $MCom: ports/graphics/poppler-data/Makefile,v 1.5 2010/11/17 15:12:27 kwm Exp $

PORTNAME=	poppler-data
PORTVERSION=	0.4.6
CATEGORIES=	graphics
MASTER_SITES=	http://poppler.freedesktop.org/

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Poppler encoding data

NO_BUILD=	yes

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/local|${PREFIX}|' ${WRKSRC}/Makefile

.include <bsd.port.mk>
