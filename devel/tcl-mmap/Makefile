# Created by: Mikhail Teterin <mi@aldan.algebra.com>
# $FreeBSD: devel/tcl-mmap/Makefile 316411 2013-04-24 08:09:56Z gahr $

PORTNAME=	tcl-mmap
PORTVERSION=	1.1
CATEGORIES=	devel
MASTER_SITES=	SF

MAINTAINER=	tcltk@FreeBSD.org
COMMENT=	New TCL channel type using mmap-ed files

LICENSE=	GPLv3

USE_TCL=	84+
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--with-tcl=${TCL_LIBDIR} \
		--prefix=${PREFIX} \
		--exec-prefix=${PREFIX}

PLIST_DIRS=	lib/mmap${PORTVERSION}
PLIST_FILES=	lib/mmap${PORTVERSION}/pkgIndex.tcl \
		lib/mmap${PORTVERSION}/libmmap${PORTVERSION}.so

MANN=	tcl-mmap.n

regression-test: build
	cd ${WRKSRC}/tests; \
	for t in *.tcl; \
	do \
	    echo "load ../libmmap${PORTVERSION}.so; source $$t" | ${TCLSH}; \
	done;

.include <bsd.port.mk>
