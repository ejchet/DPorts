# Created by: Jean-Yves Lefort <jylefort@brutele.be>
# $FreeBSD: devel/wininfo/Makefile 316333 2013-04-23 10:13:19Z bapt $

PORTNAME=	wininfo
PORTVERSION=	0.7
PORTREVISION=	10
CATEGORIES=	devel
MASTER_SITES=	http://www.freedesktop.org/software/wininfo/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A window information utility

USE_XORG=	xext xrender xinerama xrandr xi xfixes xcursor \
		xcomposite x11 xres
USE_GNOME=	gtk20 gnomeprefix
GNU_CONFIGURE=	yes
USES=		pkgconfig

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		wininfo.1

.include <bsd.port.mk>
