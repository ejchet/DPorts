# Created by: Zenin <zenin@archive.rhps.org>
# $FreeBSD: games/wmeyes/Makefile 321991 2013-06-28 21:48:59Z bapt $

PORTNAME=	wmeyes
PORTVERSION=	1.2
PORTREVISION=	1
CATEGORIES=	games
MASTER_SITES=	http://www.bstern.org/wmeyes/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The world's most useless WindowMaker dock app

USES=		imake
USE_XORG=	xpm xmu
NO_INSTALL_MANPAGES=	yes

PORTDOCS=	README
PLIST_FILES=	bin/wmeyes

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e 's|Target(|TargetNoMan(|g' ${WRKSRC}/Imakefile

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
