# Created by: greg
# $FreeBSD: audio/wavplay/Makefile 321181 2013-06-18 11:46:51Z amdmi3 $

PORTNAME=	wavplay
PORTVERSION=	1.4
PORTREVISION=	3
CATEGORIES=	audio
MASTER_SITES=	SUNSITE/apps/sound/players/

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	A wav player and recorder

ONLY_FOR_ARCHS=	i386 amd64
ONLY_FOR_ARCHS_REASON=Doesn't work on !i386 and amd64

MAN1=		wavplay.1

PLIST_FILES=	bin/wavplay bin/wavrec

post-patch:
	@${REINPLACE_CMD} -e 's|u_long|u_int|g' ${WRKSRC}/*.c ${WRKSRC}/*.h

.include <bsd.port.mk>
