# Created by: Kris Kennaway <kkennawa@physics.adelaide.edu.au>
# $FreeBSD: astro/wmmoonclock/Makefile 316786 2013-04-29 08:57:12Z bapt $

PORTNAME=	wmMoonClock
PORTVERSION=	1.27
PORTREVISION=	3
CATEGORIES=	astro windowmaker
MASTER_SITES=	http://www.dockapps.org/files/14/21/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Displays the phase of the moon, plus orbital data

WRKSRC=		${WRKDIR}/${DISTNAME}/Src

USE_XORG=	xpm
USE_GMAKE=	yes

MAN1=		wmmoonclock.1
PLIST_FILES=	bin/wmmoonclock

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmMoonClock ${PREFIX}/bin/wmmoonclock
	${INSTALL_MAN} ${WRKSRC}/wmMoonClock.1 ${PREFIX}/man/man1/wmmoonclock.1

.include <bsd.port.mk>
