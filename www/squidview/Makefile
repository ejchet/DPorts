# Created by: Stanislav Sedov <stas@FreeBSD.org>
# $FreeBSD: www/squidview/Makefile 307101 2012-11-06 22:46:01Z madpilot $

PORTNAME=	squidview
PORTVERSION=	0.79
CATEGORIES=	www
MASTER_SITES=	http://www.rillion.net/squidview/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Monitor squid statistics in realtime

GNU_CONFIGURE=	yes

MAN1=		squidview.1
DOCS=		HOWTO README
DATAFILES=	aliases users words

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/squidview ${PREFIX}/bin/

	${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${DATAFILES:S,^,${WRKSRC}/,} ${DATADIR}/

.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${DOCS:S,^,${WRKSRC}/,} ${DOCSDIR}/
.endif
	${INSTALL_MAN} ${WRKSRC}/squidview.1 ${MAN1PREFIX}/man/man1/

.include <bsd.port.mk>
