# Created by: Alexey Dokuchaev <danfe@FreeBSD.org>
# $FreeBSD: games/frikqcc/Makefile 314428 2013-03-17 12:39:11Z danfe $

PORTNAME=	frikqcc
PORTVERSION=	2.6
CATEGORIES=	games devel
MASTER_SITES=	http://wiki.quakesrc.org/files/ \
		http://freebsd.nsu.ru/distfiles/
DISTNAME=	${PORTNAME:S/qcc//}${PORTVERSION:S/.//g}src

MAINTAINER=	danfe@FreeBSD.org
COMMENT=	Advanced QuakeC compiler/decompiler

LICENSE=	GPLv2

USE_ZIP=	yes

MAKEFILE=	${FILESDIR}/Makefile
MAKE_JOBS_SAFE=	yes

PLIST_FILES=	bin/frikqcc bin/frikqcdec

do-install:
.for p in ${PLIST_FILES:T}
	${INSTALL_PROGRAM} ${WRKSRC}/${p} ${PREFIX}/bin
.endfor

.include "${.CURDIR}/../quake-source/Makefile.include"
.include <bsd.port.mk>
