# New ports collection makefile for:	ROTE
# Date created:				10 Jun 2005
# Whom:					Alexey Dokuchaev <danfe@FreeBSD.org>
#
# $FreeBSD: ports/devel/rote/Makefile,v 1.6 2012/11/17 05:56:56 svnexp Exp $
#

PORTNAME=	rote
PORTVERSION=	0.2.8
CATEGORIES=	devel
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A simple library for VT102 terminal emulation

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_LDCONFIG=	yes

PLIST_FILES=	bin/rote-config include/rote/rote.h \
		lib/librote.so.${PORTVERSION} lib/librote.so.0 lib/librote.so
PLIST_DIRS=	include/rote

.include <bsd.port.mk>
