# New ports collection makefile for:	poster
# Date created:		15 January 2000
# Whom:			Yoshiro MIHIRA <sanpei@sanpei.org>
#
# $FreeBSD: ports/print/poster/Makefile,v 1.8 2012/11/17 06:00:53 svnexp Exp $
#

PORTNAME=	poster
PORTVERSION=	1.0
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.ics.ele.tue.nl/pub/users/jos/poster/
DISTNAME=	poster

MAINTAINER=	sanpei@FreeBSD.org
COMMENT=	Resize a postscript image to print on larger media and/or multiple sheets

ALL_TARGET=	poster
MAKEFILE=	/dev/null
MAKE_ENV=	LDLIBS="-lm"
NO_WRKSUBDIR=	yes

MAN1=		poster.1
PLIST_FILES=	bin/poster

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/${DISTNAME} ${PREFIX}/bin
	@${INSTALL_DATA} ${WRKSRC}/${DISTNAME}.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
