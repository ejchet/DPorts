# New ports collection makefile for:	pwcview
# Date created:				13 January 2010
# Whom:					Andrew Thompson <thompsa@FreeBSD.org>
#
# $FreeBSD: ports/multimedia/pwcview/Makefile,v 1.7 2012/11/17 05:59:53 svnexp Exp $
#

PORTNAME=	pwcview
PORTVERSION=	1.4.1
PORTREVISION=	4
CATEGORIES=	multimedia
MASTER_SITES=	http://raaf.atspace.org/ \
		http://www.selasky.org/hans_petter/video4bsd/releases/ \
		${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	kwm

MAINTAINER=	hselasky@FreeBSD.org
COMMENT=	The Video4Linux PWC webcam viewer

BUILD_DEPENDS=	${LOCALBASE}/include/linux/videodev.h:${PORTSDIR}/multimedia/v4l_compat
LIB_DEPENDS=	jpeg.11:${PORTSDIR}/graphics/jpeg \
		v4l1.0:${PORTSDIR}/multimedia/libv4l

CONFLICTS=	pwcbsd-[0-9]*

USE_SDL=	sdl
MAN1=		pwcview.1

WRKSRC=		${WRKDIR}/${PORTNAME}

.include <bsd.port.pre.mk>

post-patch:
	@${REINPLACE_CMD} -e 's|-ljpeg|-ljpeg -lv4l1|g' \
		-e 's|sdl-config|${SDL_CONFIG}|g' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pwcview ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/pwcsnap ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${PREFIX}/man/man1

.include <bsd.port.post.mk>
