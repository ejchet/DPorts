# Created by: David Yeske <dyeske@gmail.com>
# $FreeBSD: graphics/xmms-blursk/Makefile 313559 2013-03-07 03:25:10Z bdrewery $

PORTNAME=	blursk
PORTVERSION=	1.3
PORTREVISION=	6
CATEGORIES=	graphics
MASTER_SITES=	http://web.cecs.pdx.edu/~kirkenda/blursk/
PKGNAMEPREFIX=	xmms-
DISTNAME=	Blursk-${PORTVERSION}

MAINTAINER=	c.petrik.sosa@gmail.com
COMMENT=	XMMS plugin inspired by "Blur Scope"

BUILD_DEPENDS=	xmms-config:${PORTSDIR}/multimedia/xmms
RUN_DEPENDS=	xmms:${PORTSDIR}/multimedia/xmms

PLIST_FILES=	lib/xmms/Visualization/libblursk.so
USE_GNOME=	gtk12
USE_XORG=	x11 xv
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

CPPFLAGS+=	${CFLAGS} ${PTHREAD_CFLAGS}

post-patch:
	@${REINPLACE_CMD} -e 's|-O2||' \
		${CONFIGURE_WRKSRC}/${CONFIGURE_SCRIPT} \
		${BUILD_WRKSRC}/Makefile.in
	@${REINPLACE_CMD} -e '/objformat=/s|=.*|=elf|' ${WRKSRC}/configure

.include <bsd.port.mk>
