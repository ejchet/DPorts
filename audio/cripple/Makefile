# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: audio/cripple/Makefile 316600 2013-04-26 12:35:50Z bapt $

PORTNAME=	cripple
PORTVERSION=	0.06b
PORTREVISION=	7
CATEGORIES=	audio
MASTER_SITES=	http://www.vortex.prodigynet.co.uk/${PORTNAME}/

MAINTAINER=	dhn@FreeBSD.org
COMMENT=	Command line CD ripper/encoder wrapper with cddb support

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

LIB_DEPENDS+=	cdio.13:${PORTSDIR}/sysutils/libcdio
RUN_DEPENDS+=	lame:${PORTSDIR}/audio/lame\
		cdparanoia:${PORTSDIR}/audio/cdparanoia \
		cdda2wav:${PORTSDIR}/sysutils/cdrtools

MAN1=		cripple.1

ALL_TARGET=	${PORTNAME}

PLIST_FILES=	bin/${PORTNAME}

.include <bsd.port.mk>
