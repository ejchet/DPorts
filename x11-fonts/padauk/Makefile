# New ports collection makefile for:	padauk
# Date created:		July 30 2010
# Whom:			Kuan-Chung Chiu <buganini@gmail.com>
#
# $FreeBSD: ports/x11-fonts/padauk/Makefile,v 1.3 2012/11/17 06:03:29 svnexp Exp $
#

PORTNAME=	padauk
PORTVERSION=	2.8
CATEGORIES=	x11-fonts
MASTER_SITES=	http://scripts.sil.org/cms/scripts/render_download.php?&format=file&media_id=Mh_Padauk_zip&filename=/
DISTNAME=	${PORTNAME}-${PORTVERSION}0

MAINTAINER=	buganini@gmail.com
COMMENT=	Unicode font supporting all the Myanmar characters

RUN_DEPENDS=	fc-cache:${PORTSDIR}/x11-fonts/fontconfig

FETCH_BEFORE_ARGS=	-o ${DISTFILES}
NO_BUILD=	yes
USE_ZIP=	yes

FONTSDIR=	lib/X11/fonts/Myanmar
PLIST_SUB=	FONTSDIR=${FONTSDIR}

do-install:
	${MKDIR} ${PREFIX}/${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${PREFIX}/${FONTSDIR}

post-install:
	@${ECHO_MSG} "==> Running fc-cache"
	@-${LOCALBASE}/bin/fc-cache -f -v ${PREFIX}/${FONTSDIR}

.include <bsd.port.mk>
