# New ports collection makefile for:	l2a
# Date created:				05 February 2003
# Whom:					James Flemer <jflemer@alum.rpi.edu>
#
# $FreeBSD: ports/textproc/l2a/Makefile,v 1.4 2012/11/17 06:02:01 svnexp Exp $
#

PORTNAME=	l2a
PORTVERSION=	1.2
CATEGORIES=	textproc
MASTER_SITES=	http://heim.ifi.uio.no/~gisle/enjoy/
DISTNAME=	l2a

MAINTAINER=	jflemer@alum.rpi.edu
COMMENT=	L2a - LaTeX to ASCII converter

USE_ZIP=	yes

WRKSRC=		${WRKDIR}
MAKE_ENV=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}"

MAN1=		l2a.1
PLIST_FILES=	bin/l2a

.include <bsd.port.mk>
