# Created by: HOTARU-YA <hotaru@tail.net>
# $FreeBSD: games/oneko-sakura/Makefile 321991 2013-06-28 21:48:59Z bapt $

PORTNAME=	oneko
PORTVERSION=	1.2
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	http://www.daidouji.com/oneko/distfiles/
DISTNAME=	${PORTNAME}-${PORTVERSION}.sakura.5

MAINTAINER=	hotaru@tail.net
COMMENT=	A cat, Sakura or Tomoyo chasing a mouse all over the screen

CONFLICTS=	oneko-2.*

USES=		imake
USE_XORG=	x11 xext
MAN6=		oneko.6
PLIST_FILES=	bin/oneko
NO_CDROM=	Including derivatives from CARDCAPTOR SAKURA. See http://www.clamp-net.com/ -> INFORMATION

NO_LATEST_LINK=	yes

pre-configure:
	@${REINPLACE_CMD} -e 's,/\*\*/# Cannot compile in using Gcc,/* Cannot compile using Gcc */,' \
		${WRKSRC}/Imakefile
	@${ECHO_CMD} "MANSUFFIX=6" >>${WRKSRC}/Imakefile

post-configure:
	@${REINPLACE_CMD} -e 's,^all:: oneko\..*\.html$$,,' \
			  -e 's,^install.man:: oneko\..*\.html$$,do-nada:,' \
		${WRKSRC}/Makefile

.include <bsd.port.mk>
