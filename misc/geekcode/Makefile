# Created by: Chris Piazza <cpiazza@FreeBSD.org>
# $FreeBSD: misc/geekcode/Makefile 315192 2013-03-25 04:30:31Z eadler $

PORTNAME=	geekcode
PORTVERSION=	1.7.3
CATEGORIES=	misc
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Geek Code Generator

MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS}"

PLIST_FILES=	bin/geekcode
PORTDOCS=	geekcode.txt

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/geekcode ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/geekcode.txt ${DOCSDIR}
.endif

.include <bsd.port.mk>
