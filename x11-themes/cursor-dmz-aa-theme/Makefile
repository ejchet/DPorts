# New ports collection makefile for:	cursor-dmz-aa-theme
# Date created:				Feb 7 2007
# Whom:					Florent Thoumie <flz@FreeBSD.org>
#
# $FreeBSD: ports/x11-themes/cursor-dmz-aa-theme/Makefile,v 1.5 2012/11/17 06:03:30 svnexp Exp $
#

PORTNAME=	cursor-dmz-aa-theme
PORTVERSION=	0.3
PORTREVISION=	2
CATEGORIES=	x11-themes
MASTER_SITES=	http://jimmac.musichall.cz/zip/
DISTNAME=	vanilla-dmz-aa-${PORTVERSION}

MAINTAINER=	flz@FreeBSD.org
COMMENT=	The DMZ AA style neutral scalable cursor theme

USE_BZIP2=	yes
NO_BUILD=	yes

WRKSRC=		${WRKDIR}

do-install:
	@${MKDIR} ${PREFIX}/lib/X11/icons/Vanilla-DMZ-AA/cursors
	cd ${WRKSRC}/Vanilla-DMZ-AA/cursors \
		&& ${FIND} * | ${CPIO} -pdmu ${PREFIX}/lib/X11/icons/Vanilla-DMZ-AA/cursors

.include <bsd.port.mk>
