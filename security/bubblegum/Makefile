# Ports collection Makefile for:	bubblegum
# Date created:		5 November 2002
# Whom:			Ben Kibbey <bjk@arbornet.org>
#
# $FreeBSD: ports/security/bubblegum/Makefile,v 1.11 2012/11/17 06:01:01 svnexp Exp $
#

PORTNAME=	bubblegum
PORTVERSION=	1.12
CATEGORIES=	security
MASTER_SITES=	SF/bjk/${PORTNAME}/${PORTVERSION}

MAINTAINER=	jadawin@FreeBSD.org
COMMENT=	Watch a file for changes

GNU_CONFIGURE=	yes

MAN1=		bubblegum.1
MANCOMPRESSED=	no
PLIST_FILES=	bin/bubblegum

pre-build:
	${CP} ${WRKSRC}/doc/bubblegum.man ${WRKSRC}/doc/bubblegum.1

.include <bsd.port.mk>
