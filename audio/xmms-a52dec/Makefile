# Created by: Amar Takhar <verm@drunkmonk.net>
# $FreeBSD: audio/xmms-a52dec/Makefile 313559 2013-03-07 03:25:10Z bdrewery $

PORTNAME=	xmms-a52dec
PORTVERSION=	1.0
PORTREVISION=	5
CATEGORIES=	audio
MASTER_SITES=	SF

MAINTAINER=	c.petrik.sosa@gmail.com
COMMENT=	A52 (aka AC3) decoder plugin for XMMS

LIB_DEPENDS=	xmms.4:${PORTSDIR}/multimedia/xmms \
		a52.0:${PORTSDIR}/audio/liba52
RUN_DEPENDS=	${LOCALBASE}/lib/xmms/Output/libOSSSurround.so:${PORTSDIR}/audio/xmms-osssurround

USE_BZIP2=	yes
USE_GNOME=	gtk12
CFLAGS+=	`xmms-config --cflags` -L${LOCALBASE}/lib

.include <bsd.port.pre.mk>
.if ${ARCH} == "x86_64"
CFLAGS+=	-fPIC
.endif

PLIST_FILES=	lib/xmms/Input/liba52dec.so

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -shared -o liba52dec.so xmms-a52dec.c -la52

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/liba52dec.so ${PREFIX}/lib/xmms/Input/

.include <bsd.port.post.mk>
