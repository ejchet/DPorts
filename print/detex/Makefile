# Created by: David O'Brien (obrien@NUXI.com)
# $FreeBSD: print/detex/Makefile 316786 2013-04-29 08:57:12Z bapt $

PORTNAME=	detex
PORTVERSION=	2.8
CATEGORIES=	print
MASTER_SITES=	http://www.cs.purdue.edu/homes/trinkle/detex/
EXTRACT_SUFX=	.tar

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Strips TeX/LaTeX codes from a file

MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS} -DNO_MALLOC_DECL -DHAVE_STRING_H"
MAN1=		detex.1
PLIST_FILES=	bin/detex

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1}l ${MANPREFIX}/man/man1/${MAN1}

.include <bsd.port.mk>
