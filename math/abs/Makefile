# New ports collection makefile for:   abs
# Date created:        20 January 1999
# Whom:                gmarco@giovannelli.it
#
# $FreeBSD: ports/math/abs/Makefile,v 1.22 2012/11/17 05:59:19 svnexp Exp $
#

PORTNAME=	abs
PORTVERSION=	0908
PORTREVISION=	3
CATEGORIES=	math
MASTER_SITES=	http://utenti.gufi.org/~gmarco/files/distfiles/ \
		http://fresh.t-systems-sfr.com/unix/src/privat2/
DISTNAME=	${PORTNAME}-src-${PORTVERSION}

MAINTAINER=	gmarco@gufi.org
COMMENT=	A free spreadsheet with graphical user interface

PLIST_FILES=	bin/abs
USE_XORG=	x11 xpm xaw
WRKSRC=		${WRKDIR}/abs-src-0.908

post-patch:
	@${REINPLACE_CMD} -e 's/trcasestr/strcasestr_/g' ${WRKSRC}/Database/cell.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/abs ${PREFIX}/bin

post-install:
	@${ECHO_MSG} "For the changes from previous version"
	@${ECHO_MSG} "you can read the NEWS file in ${WRKSRC}"
	@${ECHO_MSG} ""
	@${ECHO_MSG} "There are also some examples (not installed) in :"
	@${ECHO_MSG} "${WRKSRC}/Examples"
	@${ECHO_MSG} ""
	@${ECHO_MSG} ""

.include <bsd.port.mk>
