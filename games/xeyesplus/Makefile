# New ports collection makefile for:    xeyes+
# Date created:         20 Oct 1996
# Whom:                 Yukihiro Nakai <nakai@mlab.t.u-tokyo.ac.jp>
#
# $FreeBSD: ports/games/xeyesplus/Makefile,v 1.26 2012/11/17 05:57:56 svnexp Exp $
#

PORTNAME=	xeyes+
PORTVERSION=	2.02
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	http://www.asahi-net.or.jp/~fj9y-ynym/
DISTNAME=	${PORTNAME}${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Horrible eyes looking at your mouse cursor

USE_XORG=	xpm

PLIST_FILES=	bin/xeyes+

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -I${LOCALBASE}/include -DXPM -DUSLEEP \
		-o xeyes+ xeyes+.c -L${LOCALBASE}/lib -lX11 -lXpm -lm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xeyes+ ${PREFIX}/bin

.include <bsd.port.mk>
