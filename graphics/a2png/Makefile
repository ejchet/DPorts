# New ports collection makefile for:	a2png
# Date created:		07 Oct 2006
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: graphics/a2png/Makefile 324437 2013-08-09 14:05:52Z dinoex $
#

PORTNAME=	a2png
PORTVERSION=	0.1.5
PORTREVISION=	6
CATEGORIES=	graphics
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Converts plain ASCII text into PNG bitmap images

LIB_DEPENDS=	gd:${PORTSDIR}/graphics/gd

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-gd
CFLAGS+=	-DDEFAULT_FONTPATH='\"${FONTROOTDIR}/TTF:${FONTROOTDIR}/Type1:${FONTROOTDIR}\"'
MAN1=		${PORTNAME}.1
PLIST_FILES=	bin/${PORTNAME}

FONTROOTDIR?=	${LOCALBASE}/lib/X11/fonts

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/src/${PORTNAME} ${PREFIX}/bin/
	@${INSTALL_MAN} ${WRKSRC}/man/${MAN1} ${MAN1PREFIX}/man/man1/

.include <bsd.port.mk>
