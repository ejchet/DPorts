# Created by: Julien Laffaye <kimelto@gmail.com>
# $FreeBSD: irc/ii/Makefile 317272 2013-05-03 21:54:48Z bapt $

PORTNAME=	ii
PORTVERSION=	1.7
CATEGORIES=	irc
MASTER_SITES=	http://dl.suckless.org/tools/ \
		LOCAL/sbz

MAINTAINER=	sbz@FreeBSD.org
COMMENT=	Minimalist FIFO and filesystem-based IRC client

LICENSE=	MIT

MAN1=		${PORTNAME}.1
PLIST_FILES=	bin/${PORTNAME}
PORTDOCS=	CHANGES FAQ README
PORTEXAMPLES=	query.sh
.if !defined(.PARSEDIR)
MAKE_ARGS=	-E CC
.endif

.include <bsd.port.options.mk>

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1 ${MAN1PREFIX}/man/man1
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}
.endif
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${EXAMPLESDIR}
	@${INSTALL_DATA} ${WRKSRC}/${PORTEXAMPLES} ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
