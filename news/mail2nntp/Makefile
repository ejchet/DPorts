# Created by: gary@hayers.org
# $FreeBSD: ports/news/mail2nntp/Makefile,v 1.1 2013/02/14 05:41:54 svnexp Exp $

PORTNAME=	mail2nntp
PORTVERSION=	1.0
CATEGORIES=	news mail
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/Stable%201.0/

MAINTAINER=	gary@hayers.org
COMMENT=	Simple mail to news gateway

LICENSE=	GPLv2

RUN_DEPENDS=	p5-NNTPClient>=0:${PORTSDIR}/news/p5-NNTPClient

USE_PERL5_RUN=	yes
NO_BUILD=	yes

PORTDOCS=	*
PLIST_FILES=	bin/mail2nntp.pl

.include <bsd.port.options.mk>

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mail2nntp.pl ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/Changelog ${DOCSDIR}
.endif

.include <bsd.port.mk>
