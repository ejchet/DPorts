# Ports collection makefile for:	libquicktime-lame
# Date Created:				Aug 11, 2009
# Whom:					mm
#
# $FreeBSD: ports/multimedia/libquicktime-lame/Makefile,v 1.8 2012/11/17 05:59:50 svnexp Exp $
#

PORTNAME=	libquicktime
PORTREVISION=	3
CATEGORIES=	multimedia
PKGNAMESUFFIX=	-lame
PORTREVISION=	2

MAINTAINER=	mm@FreeBSD.org
COMMENT=	LAME plugin for libquicktime

LIB_DEPENDS=	quicktime.0:${PORTSDIR}/multimedia/libquicktime \
		mp3lame.0:${PORTSDIR}/audio/lame

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/COPYING

MASTERDIR=	${.CURDIR}/../libquicktime
PLIST=		${.CURDIR}/pkg-plist

LATEST_LINK=	${PORTNAME}-${PKGNAMESUFFIX}

_BUILDING_LIBQUICKTIME_PLUGINS=	yes

CONFIGURE_ARGS+=	--with-lame \
			--without-x \
			--without-cpuflags \
			--without-gtk \
			--without-opengl \
			--without-libdv \
			--without-libjpeg \
			--without-libpng \
			--without-ffmpeg \
			--without-faac \
			--without-faad2 \
			--without-x264 \
			--without-schroedinger

do-install:
	@cd ${WRKSRC}/plugins/lame && ${GMAKE} install

.include "${MASTERDIR}/Makefile"
