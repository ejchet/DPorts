# New ports collection makefile for:    hp2xx
# Date created:         17 Jan 1999
# Whom:                 Lars Koeller
#
# $FreeBSD: ports/print/hp2xx/Makefile,v 1.27 2012/11/17 06:00:50 svnexp Exp $
#

PORTNAME=	hp2xx
PORTVERSION=	3.4.4
PORTREVISION=	5
CATEGORIES=	print x11
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A HPGL to vector- and raster formats converter and previewer for X11

LIB_DEPENDS=	png15:${PORTSDIR}/graphics/png \
		tiff.4:${PORTSDIR}/graphics/tiff

WRKSRC=		${WRKDIR}/${DISTNAME}/sources

MAKE_ENV=	DEFINES="${CPPFLAGS}" ALL_LIBS="${LDFLAGS}" \
		PREVIEWER="${PREVIEWER}"

MAN1=		hp2xx.1
INFO=		hp2xx

CPPFLAGS+=	-DUNIX -I${LOCALBASE}/include
LDFLAGS+=	-lm -L${LOCALBASE}/lib -ltiff -lpng -lz

.if defined(WITHOUT_X11)
PKGNAMESUFFIX=	-nox11
PREVIEWER=	no_prev
.else
USE_XORG=	x11
CPPFLAGS+=	-DHAS_UNIX_X11 -I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -lX11
PREVIEWER=	to_x11
.endif

.include <bsd.port.mk>
