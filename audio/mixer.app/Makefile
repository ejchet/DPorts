# New ports collection makefile for:  	mixer.app
# Date created:		16 April 1999
# Whom:			Chris Piazza <cpiazza@FreeBSD.org>
#
# $FreeBSD: ports/audio/mixer.app/Makefile,v 1.24 2012/11/17 05:54:38 svnexp Exp $
#

PORTNAME=	mixer.app
PORTVERSION=	1.8.0
PORTREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_DEBIAN_POOL}
DISTNAME=	${PORTNAME}_${PORTVERSION}.orig

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Another mixer intended for the windowmaker dockapp

PLIST_FILES=	bin/Mixer.app
WRKSRC=		${WRKDIR}/Mixer.app-${PORTVERSION}
CXXFLAGS+=	-fno-rtti -fno-exceptions -I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -lXpm -lXext -lX11
MAKE_ARGS=	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" LDFLAGS="${LDFLAGS}"

USE_XORG=	xpm xext x11

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Mixer.app ${PREFIX}/bin

.include <bsd.port.mk>
