# New ports collection makefile for:   sodipodi
# Date created:        28 January 2000
# Whom:                Yukihiro Nakai <nakai@FreeBSD.org>
#
# $FreeBSD: graphics/sodipodi/Makefile 316464 2013-04-24 18:10:30Z ak $
#    $MCom: ports/graphics/sodipodi/Makefile,v 1.3 2007/05/30 03:21:43 mezz Exp $

PORTNAME=	sodipodi
PORTVERSION=	0.34
PORTREVISION=	16
CATEGORIES=	graphics gnome
MASTER_SITES=	SF

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A small vector based drawing program with GNOME libraries

LIB_DEPENDS=	popt.0:${PORTSDIR}/devel/popt \
		png15:${PORTSDIR}/graphics/png

USE_GMAKE=	yes
USE_GNOME=	gnomeprefix gnomehack libglade2 libartlgpl2 desktopfileutils
USES=		gettext
USE_AUTOTOOLS=	libtool
CONFIGURE_ARGS=	--without-gnome-print \
		--with-popt
CPPFLAGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/freetype2
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		sodipodi.1

post-patch:
	@${REINPLACE_CMD} -e 's|<malloc.h>|<stdlib.h>|g' \
		${WRKSRC}/src/helper/action.c \
		${WRKSRC}/src/helper/bezier-utils.c \
		${WRKSRC}/src/libarikkei/arikkei-dict.c \
		${WRKSRC}/src/libarikkei/arikkei-token.c \
		${WRKSRC}/src/libarikkei/arikkei-strlib.c \
		${WRKSRC}/src/libnr/nr-pathops.c

.include <bsd.port.mk>
