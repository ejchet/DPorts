# New ports collection makefile for:	artwiz-ru
# Date created:		2004-10-31
# Whom:			Roman Bogorodskiy <bogorodskiy@inbox.ru>
#
# $FreeBSD: ports/russian/artwiz-ru/Makefile,v 1.7 2012/11/17 06:00:55 svnexp Exp $
#

PORTNAME=	artwiz-ru
PORTVERSION=	20041031
PORTREVISION=	2
CATEGORIES=	russian x11-fonts
MASTER_SITES=	http://dev.gentoo.org/~sergey/ \
		${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	novel
DISTNAME=	artwiz_ru

MAINTAINER=	novel@FreeBSD.org
COMMENT=	Russian Artwiz fonts

BUILD_DEPENDS=	fc-cache:${PORTSDIR}/x11-fonts/fontconfig
RUN_DEPENDS=	fc-cache:${PORTSDIR}/x11-fonts/fontconfig

USE_BZIP2=	yes
NO_BUILD=	yes
WRKSRC=		${WRKDIR}/fonts
PKGMESSAGE=	${WRKDIR}/pkg-message

FONTDIR=	${LOCALBASE}/lib/X11/fonts/${PORTNAME}

post-patch:
	@${SED} -e 's,LOCALBASE,${LOCALBASE},g' ${FILESDIR}/pkg-message.in > ${PKGMESSAGE}

do-install:
	${MKDIR} ${FONTDIR}
	for f in ${WRKSRC}/*; do \
		${INSTALL_DATA} $$f ${FONTDIR}; \
		done

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
