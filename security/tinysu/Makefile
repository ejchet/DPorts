# New ports collection makefile for:	tinysu
# Date created:		5 May 2005
# Whom:			zakj@nox.cx
#
# $FreeBSD: ports/security/tinysu/Makefile,v 1.3 2012/11/17 06:01:21 svnexp Exp $
#

PORTNAME=	tinysu
PORTVERSION=	0.9
CATEGORIES=	security
MASTER_SITES=	http://peff.net/tinysu/

MAINTAINER=	zakj@nox.cx
COMMENT=	A featureless replacement for su and sudo

PLIST_FILES=	bin/tinysu

ALL_TARGET=	it
INSTALL_TARGET=	setup check

post-extract:
	@${ECHO_CMD} ${PREFIX} >${WRKSRC}/conf-home

.include <bsd.port.mk>
