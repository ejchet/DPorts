# Created by: Patrick Li <pat@databits.net>
# $FreeBSD: misc/wmScoreBoard/Makefile 315192 2013-03-25 04:30:31Z eadler $

PORTNAME=	wmScoreBoard
PORTVERSION=	0.30
PORTREVISION=	4
CATEGORIES=	misc windowmaker
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	pat

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Window Maker dockapp that display game scores from excite

RUN_DEPENDS=	wget:${PORTSDIR}/ftp/wget

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}/src
USE_GMAKE=	yes
USE_XORG=	xpm

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for docs in BUGS CHANGES HINTS README
	@${INSTALL_DATA} ${WRKSRC}/../${docs} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
