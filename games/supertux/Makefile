# Created by: michael johnson <ahze@ahze.net>
# $FreeBSD: games/supertux/Makefile 313657 2013-03-08 16:10:17Z makc $

PORTNAME=	supertux
PORTVERSION=	0.1.3
PORTREVISION=	9
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	makc@FreeBSD.org
COMMENT=	Super Tux is a side-scroller similar to Super Mario Brothers

USE_BZIP2=	yes
USE_SDL=	image mixer
USE_GL=		yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=		--disable-debug

PORTSCOUT=	limit:^0\.1

post-patch:
	@${REINPLACE_CMD} -e 's,Menu::,,' ${WRKSRC}/src/menu.h

.include <bsd.port.mk>
