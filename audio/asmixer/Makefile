# Created by: Mike Makonnen <mtm@identd.net>
# $FreeBSD: audio/asmixer/Makefile 314074 2013-03-13 11:54:25Z danfe $

PORTNAME=	asmixer
PORTVERSION=	0.5
PORTREVISION=	2
CATEGORIES=	audio afterstep
MASTER_SITES=	http://www.tigr.net/afterstep/download/asmixer/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Mixer control for AfterStep window manager

MAN1=		${PORTNAME}.1x
PLIST_FILES=	bin/asmixer

USE_XORG=	xpm x11
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-xpm \
		--with-xpm-includes=${LOCALBASE} \
		--with-xpm-library=${LOCALBASE}

post-install:
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.man \
		${MAN1PREFIX}/man/man1/${PORTNAME}.1x

.include <bsd.port.mk>
