# Created by: Henrik Brix Andersen <brix@FreeBSD.org>
# $FreeBSD: sysutils/usbutils/Makefile 316831 2013-04-29 16:43:05Z rene $

PORTNAME=	usbutils
PORTVERSION=	0.86
PORTREVISION=	1
CATEGORIES=	sysutils
MASTER_SITES=	SF/linux-usb/${PORTNAME}

MAINTAINER=	brix@FreeBSD.org
COMMENT=	Utility for listing USB devices

LICENSE=	GPLv2

GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS=	--datadir=${DATADIR} --enable-zlib
USE_GMAKE=	yes
USE_GNOME=	pkgconfig

MAN1=		usb-devices.1
MAN8=		lsusb.8
PORTDOCS=	AUTHORS ChangeLog NEWS README

.include <bsd.port.options.mk>

.if ${OPSYS} == DragonFly
USES+=	usb
.else
CONFIGURE_ENV+=	LIBUSB_CFLAGS="-I/usr/include" \
		LIBUSB_LIBS="-L/usr/lib -lusb"
.endif

post-patch:
	@${REINPLACE_CMD} -i '' \
		-e 's|/bin/bash|/bin/sh|' \
		${WRKSRC}/usb-devices

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S@^@${WRKSRC}/@} ${DOCSDIR}
.endif

.include <bsd.port.mk>
