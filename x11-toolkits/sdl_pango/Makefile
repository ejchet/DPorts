# New ports collection makefile for:   x11-toolkits/sdl_pango
# Date created:        2006-10-30
# Whom:                Edwin Groothuis <edwin@mavetju.org>
#
# $FreeBSD: ports/x11-toolkits/sdl_pango/Makefile,v 1.13 2012/11/17 06:03:39 svnexp Exp $
#

PORTNAME=	sdl_pango
PORTVERSION=	0.1.2
PORTREVISION=	7
CATEGORIES=	x11-toolkits
MASTER_SITES=	SF/sdlpango/SDL_Pango/${PORTVERSION}
DISTNAME=	SDL_Pango-${PORTVERSION}

PATCH_SITES=	http://zarb.org/~gc/t/
PATCHFILES=	SDL_Pango-0.1.2-API-adds.patch

MAINTAINER=	edwin@mavetju.org
COMMENT=	SDL_Pango is the SDL API to the Pango text rendering engine of GNOME 2.x

USE_AUTOTOOLS=	libtool
USE_SDL=	sdl
USE_GNOME=	pango
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

.include <bsd.port.mk>
