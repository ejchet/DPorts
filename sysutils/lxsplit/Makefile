# Created by: kiesel@schlund.de
# $FreeBSD: sysutils/lxsplit/Makefile 321001 2013-06-15 14:04:19Z bsam $

PORTNAME=	lxsplit
PORTVERSION=	0.2.4
PORTREVISION=	2
CATEGORIES=	sysutils
MASTER_SITES=	SF

MAINTAINER=	yzlin@FreeBSD.org
COMMENT=	Simple program to split or join files

LICENSE=	GPLv2

PLIST_FILES=	bin/lxsplit
PORTDOCS=	ChangeLog README

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lxsplit ${PREFIX}/bin/
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_MAN} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}
.endif

.include <bsd.port.mk>
