# New ports collection makefile for:	ArrowLISP
# Date created:				12 Aug 2003
# Whom:					Nils M Holm <nmh@t3x.org>
#
# $FreeBSD: ports/lang/alisp/Makefile,v 1.23 2012/11/17 05:58:47 svnexp Exp $
#

PORTNAME=	alisp
PORTVERSION=	20060917
CATEGORIES=	lang devel lisp
MASTER_SITES=	http://t3x.org/files/

MAINTAINER=	nmh@t3x.org
COMMENT=	An interpreter for purely symbolic LISP

MAN7=		alisp.7
MANCOMPRESSED=	no

USE_LDCONFIG=	yes
MAKE_ENV+=	BINOWN=${BINOWN} \
		BINGRP=${BINGRP}

post-patch:	.SILENT
	${REINPLACE_CMD} -e 's/cc/$$(CC)/' \
		-e '/^CFLAGS/{s/=/+=/;s/-g//;s/-O//;}' \
		-e '/strip alisp/d' \
		-e '/install.*alisp /s/install/& ${STRIP}/' \
		${WRKSRC}/Makefile
	${REINPLACE_CMD} -e 's,/usr/local,${PREFIX},g' ${WRKSRC}/alisp.h

.include <bsd.port.mk>
