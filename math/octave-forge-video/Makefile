# Created by: Stephen Montgomery-Smith <stephen@math.missouri.edu>
# $FreeBSD: math/octave-forge-video/Makefile 322356 2013-07-05 20:59:44Z stephen $

PORTNAME=	octave-forge-video
PORTVERSION=	1.0.2
PORTREVISION=	10
CATEGORIES=	math

MAINTAINER=	stephen@FreeBSD.org
COMMENT=	Octave-forge package ${OCTAVE_PKGNAME}

GNU_CONFIGURE=	yes

LIB_DEPENDS+=	avcodec:${PORTSDIR}/multimedia/ffmpeg

.include "${.CURDIR}/../../Mk/bsd.octave.mk"
.include <bsd.port.mk>
