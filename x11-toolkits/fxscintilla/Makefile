# Created by: Alexander Novitsky <alecn2002@yandex.ru>
# $FreeBSD: x11-toolkits/fxscintilla/Makefile 316372 2013-04-23 16:45:40Z gahr $

PORTNAME=	fxscintilla
PORTVERSION=	2.28.0
PORTREVISION=	5
CATEGORIES=	x11-toolkits
MASTER_SITES=	SAVANNAH

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A Fox toolkit reimplementation of Scintilla editing widget

LICENSE=	LGPL21 # (or later)
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	FOX-1.6:${PORTSDIR}/x11-toolkits/fox16

USES=	pathfix pkgconfig
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-shared
USE_LDCONFIG=	yes
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
