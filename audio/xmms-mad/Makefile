# Created by: David Yeske <dyeske@gmail.com>
# $FreeBSD: audio/xmms-mad/Makefile 314074 2013-03-13 11:54:25Z danfe $

PORTNAME=	xmms-mad
PORTVERSION=	0.10
CATEGORIES=	audio
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	XMMS input plugin that uses libmad

LIB_DEPENDS=	mad:${PORTSDIR}/audio/libmad \
		id3tag:${PORTSDIR}/audio/libid3tag \
		xmms:${PORTSDIR}/multimedia/xmms

USE_BZIP2=	yes
USE_GNOME=	gtk12
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

PLIST_FILES=	lib/xmms/Input/libxmmsmad.so

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

do-install:
	${INSTALL_DATA} ${WRKSRC}/src/.libs/libxmmsmad.so \
		${PREFIX}/lib/xmms/Input

.include <bsd.port.mk>
