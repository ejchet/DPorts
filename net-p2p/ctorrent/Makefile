# New ports collection makefile for:	ctorrent
# Date created:				Jan 17 2004
# Whom:					Florent Thoumie <flz@xbsd.org>
#
# $FreeBSD: net-p2p/ctorrent/Makefile 320530 2013-06-11 04:44:18Z dinoex $
#

PORTNAME=	ctorrent
PORTVERSION=	3.3.2
PORTREVISION=	3
CATEGORIES=	net-p2p
MASTER_SITES=	http://www.rahul.net/dholmes/ctorrent/
DISTNAME=	${PORTNAME}-dnh${PORTVERSION}

MAINTAINER=	dinoex@FreeBSD.org
COMMENT=	BitTorrent Client written in C for FreeBSD and Linux

GNU_CONFIGURE=	yes
#WRKSRC=		${WRKDIR}/${PORTNAME}-dnh${PATCHLEVEL}

PLIST_FILES=	bin/ctorrent

PORTDOCS=	README-DNH.TXT UserGuide

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for i in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/$i ${DOCSDIR}/
.endfor
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
