# Created by: Edward Tomasz Napierala <trasz@FreeBSD.org>
# $FreeBSD: audio/aubio/Makefile 316287 2013-04-22 23:19:08Z bapt $

PORTNAME=	aubio
PORTVERSION=	0.3.2
PORTREVISION=	8
CATEGORIES=	audio
MASTER_SITES=	http://aubio.org/pub/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Library for audio labelling

BUILD_DEPENDS=	${LOCALBASE}/include/fftw3.h:${PORTSDIR}/math/fftw3
LIB_DEPENDS=	samplerate:${PORTSDIR}/audio/libsamplerate \
		sndfile:${PORTSDIR}/audio/libsndfile \
		jack:${PORTSDIR}/audio/jack \
		fftw3f:${PORTSDIR}/math/fftw3-float \
		lash:${PORTSDIR}/audio/lash

GNU_CONFIGURE=	yes
# --disable-complex: does not compile due to missing carg(3) et al.
CONFIGURE_ARGS=	--disable-complex
USE_GMAKE=	yes
USES=	pathfix pkgconfig
USE_LDCONFIG=	yes

CPPFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.mk>
