# Created by: eivind
# $FreeBSD: games/xscavenger/Makefile 321957 2013-06-28 11:51:05Z bapt $

PORTNAME=	xscavenger
PORTVERSION=	1.4.4
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	http://www.xdr.com/dash/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Lode Runner clone for X11

WRKSRC_SUBDIR=	src

USES=		imake
USE_XORG=	x11 xext
MAN6=		scavenger.6

CFLAGS+=	-Wno-return-type -Wno-pointer-sign

pre-configure:
	@${LN} -sf scavenger.6 ${WRKSRC}/scavenger.man
	@${ECHO_CMD} "MANSUFFIX=6" >> ${WRKSRC}/Imakefile

.include <bsd.port.mk>
