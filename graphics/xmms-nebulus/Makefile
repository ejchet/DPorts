# Created by: David Yeske <dyeske@gmail.com>
# $FreeBSD: graphics/xmms-nebulus/Makefile 313559 2013-03-07 03:25:10Z bdrewery $

PORTNAME=	xmms-nebulus
PORTVERSION=	0.8.0
PORTREVISION=	5
CATEGORIES=	graphics
MASTER_SITES=	http://nebulus.tuxfamily.org/

MAINTAINER=	c.petrik.sosa@gmail.com
COMMENT=	XMMS visualization plugin that uses SDL and OpenGL

BUILD_DEPENDS=	xmms-config:${PORTSDIR}/multimedia/xmms
RUN_DEPENDS=	xmms:${PORTSDIR}/multimedia/xmms

PLIST_FILES=	lib/xmms/Visualization/libnebulus.so
USE_SDL=	sdl
USE_GL=		yes
USE_GNOME=	gtk12
USE_BZIP2=	yes
GNU_CONFIGURE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include

post-patch:
	@${REINPLACE_CMD} -e \
		's|-Wall||' \
		${WRKSRC}/src/Makefile.in

.include <bsd.port.mk>
