# New ports collection makefile for:   blast
# Date created:         9 Jul 1996
# Whom:            searle
#
# $FreeBSD: ports/x11/blast/Makefile,v 1.26 2012/11/17 06:03:14 svnexp Exp $
#

PORTNAME=	blast
PORTVERSION=	1.1
PORTREVISION=	3
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_DEBIAN}
MASTER_SITE_SUBDIR=	pool/main/b/blast
DISTNAME=	${PORTNAME}_${PORTVERSION}.orig

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Blast blows holes through windows

WRKSRC=		${WRKDIR}/${PORTNAME}-1.1.orig
USE_XORG=	ice sm x11 xau xcursor xdmcp xext xfixes xt xrandr
MAN1=		blast.1
PLIST_FILES=	bin/blast

do-build:
	${CC} ${CFLAGS} ${WRKSRC}/blast.c -I${LOCALBASE}/include -L${LOCALBASE}/lib -lX11 -lXext -o ${WRKSRC}/blast

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/blast ${PREFIX}/bin/blast
	${INSTALL_MAN} ${WRKSRC}/blast.man ${MANPREFIX}/man/man1/blast.1

.include <bsd.port.mk>
