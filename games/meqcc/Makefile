# Created by: Alexey Dokuchaev <danfe@FreeBSD.org>
# $FreeBSD: games/meqcc/Makefile 314428 2013-03-17 12:39:11Z danfe $

PORTNAME=	meqcc
PORTVERSION=	1.4
CATEGORIES=	games devel
MASTER_SITES=	ftp://ftp.clan-rum.org/quake/qutils/ \
		http://freebsd.nsu.ru/distfiles/
DISTNAME=	${PORTNAME}${PORTVERSION:S/.//g}src

MAINTAINER=	danfe@FreeBSD.org
COMMENT=	MrElusive's QuakeC compiler with precompiler support

LICENSE=	GPLv2

USE_ZIP=	yes
USE_DOS2UNIX=	yes
MAKEFILE=	linux.mak
NO_WRKSUBDIR=	yes

PLIST_FILES=	bin/meqcc
PORTDOCS=	*

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e 's/<io\.h>/<unistd.h>/ ; /<conio\.h>/d' \
		${WRKSRC}/l_log.c
	@${REINPLACE_CMD} -e 's/unsigned long t/time_t t/' \
		${WRKSRC}/l_precomp.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/qcc ${PREFIX}/bin/${PORTNAME}
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/[^gr]*.txt ${DOCSDIR}
.endif

.include "${.CURDIR}/../quake-source/Makefile.include"
.include <bsd.port.mk>
