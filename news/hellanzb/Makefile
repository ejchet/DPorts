# Created by: Philip Jenvey <pjenvey@groovie.org>
# $FreeBSD: ports/news/hellanzb/Makefile,v 1.14 2013/02/26 19:43:36 svnexp Exp $

PORTNAME=	hellanzb
PORTVERSION=	0.13
PORTREVISION=	2
CATEGORIES=	news
MASTER_SITES=	http://www.hellanzb.com/distfiles/

MAINTAINER=	pjenvey@groovie.org
COMMENT=	Nzb downloader and post processor

LICENSE=	BSD

RUN_DEPENDS=	par2:${PORTSDIR}/archivers/par2cmdline \
		flac:${PORTSDIR}/audio/flac \
		shorten:${PORTSDIR}/audio/shorten \
		${PYTHON_PKGNAMEPREFIX}yenc>=0:${PORTSDIR}/news/py-yenc \
		mac:${PORTSDIR}/audio/mac

USE_PYTHON=	-2.7
USE_PYDISTUTILS=yes
USE_TWISTED_RUN=	web
PORTDOCS=	CHANGELOG CREDITS README

.include <bsd.port.options.mk>

RUN_DEPENDS+=	unrar:${PORTSDIR}/archivers/unrar

post-install:
	@if [ ! -f ${PREFIX}/etc/hellanzb.conf ]; then \
		${ECHO} "Installing default configuration file."; \
		${INSTALL_DATA} ${WRKSRC}/etc/hellanzb.conf.sample ${PREFIX}/etc/hellanzb.conf; \
	fi

.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for doc in ${PORTDOCS}
	@${INSTALL_DATA} ${WRKSRC}/${doc} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
