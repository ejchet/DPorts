# Created by: domi@saargate.de
# $FreeBSD: ports/textproc/gdict/Makefile,v 1.22 2012/12/29 04:52:00 svnexp Exp $

PORTNAME=	gdict
PORTVERSION=	0.7
PORTREVISION=	4
CATEGORIES=	textproc
MASTER_SITES=	http://www.brettnacher.org/users/dominik/FreeBSD/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Small program that finds definitions of arbitrary (English) words

USE_GNOME=	gtk12

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gdict ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/dict ${PREFIX}/bin/cdict

.include <bsd.port.mk>
