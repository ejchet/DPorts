# New ports collection makefile for:	par2cmdline
# Whom:					Chris Larsen <darth@vader.dk>
# Date created:				24 July 2003
#
# $FreeBSD: ports/archivers/par2cmdline/Makefile,v 1.19 2012/11/17 05:54:22 svnexp Exp $
#

PORTNAME=	par2cmdline
PORTVERSION=	0.4
PORTREVISION=	4
CATEGORIES=	archivers
MASTER_SITES=	SF/parchive/${PORTNAME}/${PORTVERSION}

MAINTAINER=	martymac@FreeBSD.org
COMMENT=	Tools for using Parity v2 Archive files

LICENSE=	GPLv2

GNU_CONFIGURE=	yes

PORTDOCS=	README
CONFLICTS=	par2cmdline-tbb-[0-9]*
PLIST_FILES=	bin/par2 bin/par2create bin/par2repair bin/par2verify

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_MAN} ${WRKSRC}/README ${DOCSDIR}/
.endif

.include <bsd.port.mk>
