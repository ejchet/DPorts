# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@sunpoet.net>
# $FreeBSD: audio/libfishsound/Makefile 320405 2013-06-09 19:30:58Z naddy $

PORTNAME=	libfishsound
PORTVERSION=	1.0.0
PORTREVISION=	2
CATEGORIES=	audio
MASTER_SITES=	http://downloads.xiph.org/releases/libfishsound/ \
		LOCAL/sunpoet

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	A programing interface to decode/encode audio data

LICENSE=	BSD

LIB_DEPENDS=	FLAC:${PORTSDIR}/audio/flac \
		speex:${PORTSDIR}/audio/speex \
		vorbis:${PORTSDIR}/audio/libvorbis

OPTIONS_DEFINE=	DOCS DOXYGEN

GNU_CONFIGURE=	yes
USE_GNOME=	gnomehack pkgconfig
USE_LDCONFIG=	yes

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS} && ${PORT_OPTIONS:MDOXYGEN}
BUILD_DEPENDS+=	${LOCALBASE}/bin/doxygen:${PORTSDIR}/devel/doxygen
PORTDOCS=	*
.endif

post-patch:
.if empty(PORT_OPTIONS:MDOCS) || empty(PORT_OPTIONS:MDOXYGEN)
	@${REINPLACE_CMD} -e '/^SUBDIRS = / s| doc||' ${WRKSRC}/Makefile.in
.endif

.include <bsd.port.mk>
