# Created by: Scott Flatman <sf@dsinw.com>
# $FreeBSD: benchmarks/stream/Makefile 313199 2013-03-02 05:56:28Z miwi $

PORTNAME=	stream
PORTVERSION=	5.10
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.cs.virginia.edu/stream/FTP/Code/
DISTFILES=	stream.c
DIST_SUBDIR=	${PORTNAME}-1.0/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Synthetic benchmark program that measures sustainable memory bandwidth

OPTIONS_DEFINE=	DOCS

NO_WRKSUBDIR=	yes

EXTRACT_CMD=	${CP}
EXTRACT_BEFORE_ARGS=	#
EXTRACT_AFTER_ARGS=	${WRKDIR}

PORTDOCS=	stream.c
PLIST_FILES=	bin/stream_bench

.include <bsd.port.options.mk>

do-build:
	(cd ${WRKSRC} && ${CC} ${CFLAGS} -o stream_bench stream.c -lm)

do-install:
	(cd ${WRKSRC} && ${INSTALL_PROGRAM} stream_bench ${PREFIX}/bin)
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	(cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR})
.endif

.include <bsd.port.mk>
