# Created by: John Hixson <john@pcbsd.org>
# $FreeBSD: audio/pianobar/Makefile 320126 2013-06-06 20:30:57Z wg $

PORTNAME=	pianobar
PORTVERSION=	2013.05.19
CATEGORIES=	audio
MASTER_SITES=	http://6xq.net/projects/${PORTNAME}/

MAINTAINER=	john@pcbsd.org
COMMENT=	Command line Pandora player

LICENSE=	MIT

LIB_DEPENDS=	ao:${PORTSDIR}/audio/libao \
		faad:${PORTSDIR}/audio/faad \
		mad:${PORTSDIR}/audio/libmad \
		gnutls:${PORTSDIR}/security/gnutls \
		json:${PORTSDIR}/devel/json-c \
		gcrypt:${PORTSDIR}/security/libgcrypt

MAN1=		pianobar.1
MAN_COMPRESSED=	no

PLIST_FILES=	bin/pianobar

USE_BZIP2=	yes
USE_GMAKE=	yes
MAKE_ARGS+=	CC="${CC}"

CFLAGS+=	-I${LOCALBASE}/include -std=c99
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
