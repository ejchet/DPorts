# Created by: David Yeske <dyeske@gmail.com>
# $FreeBSD: graphics/xmms-iris/Makefile 313559 2013-03-07 03:25:10Z bdrewery $

PORTNAME=	iris
PORTVERSION=	0.12
PORTREVISION=	4
CATEGORIES=	graphics
MASTER_SITES=	http://cdelfosse.free.fr/xmms-iris/
PKGNAMEPREFIX=	xmms-

MAINTAINER=	c.petrik.sosa@gmail.com
COMMENT=	Adaptation of the "OpenGL Spectrum Analyzer" from XMMS

BUILD_DEPENDS=	xmms-config:${PORTSDIR}/multimedia/xmms
RUN_DEPENDS=	xmms:${PORTSDIR}/multimedia/xmms

GNU_CONFIGURE=	yes
PLIST_FILES=	lib/xmms/Visualization/libiris.so
USE_GNOME=	gtk12
USE_GMAKE=	yes
USE_GL=		yes
USE_LDCONFIG=	yes

post-patch:
	@${REINPLACE_CMD} \
		-e 's|-lpthread|${PTHREAD_LIBS:S/"//g}|g' \
		-e '/objformat=/s|=.*|=elf|' \
			${WRKSRC}/configure

.include <bsd.port.mk>
