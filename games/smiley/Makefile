# New ports collection makefile for:	smiley
# Date created:		15.12.2001
# Whom:			Lars K�ller <Lars.Koeller@Uni-Bielefeld.DE>
#
# $FreeBSD: ports/games/smiley/Makefile,v 1.9 2012/11/17 05:57:53 svnexp Exp $
#

PORTNAME=	smiley
PORTVERSION=	4.0
CATEGORIES=	games
# No external mirror available anymore
#MASTER_SITES=	ftp://ftp.fu-berlin.de/pub/unix/misc/smiley/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A "server" to print out a smiley with it's explanation

WRKSRC=		${WRKDIR}/${PORTNAME}

MAN1=		"smiley.1"
PLIST_FILES=	bin/smiley

post-patch:
	${CP} ${WRKSRC}/Makefile ${WRKSRC}/Makefile.input
	${SED} "s|%CFLAGS%|${CFLAGS}|" ${WRKSRC}/Makefile.input > ${WRKSRC}/Makefile
	${RM} -f ${WRKSRC}/Makefile.input

do-install:
	${MKDIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${MANPREFIX}/man/man1

.include <bsd.port.mk>
