# New ports collection makefile for:    tavrasm
# Date created:                         12 December 2003
# Whom:                                 Wes Peters <@FreeBSD.org>
#
# $FreeBSD: ports/devel/avra/Makefile,v 1.14 2012/11/17 05:55:34 svnexp Exp $
#

PORTNAME=	avra
PORTVERSION=	1.3.0
CATEGORIES=	devel
MASTER_SITES=	SF/${PORTNAME}/${PORTVERSION}

MAINTAINER=	graudeejs@gmail.com
COMMENT=	Macro Assembler for Atmel AVR microcontrollers

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

WRKSRC=		${WRKDIR}/${DISTNAME}/src

USE_BZIP2=	yes
USE_GMAKE=	yes
MAKEFILE=	${WRKSRC}/makefiles/Makefile.linux
MAKE_ARGS=	CC="${CC}" LD="${CC}" CFLAGS="${CFLAGS}" LDFLAGS=""

PORTDOCS=	*
PORTEXAMPLES=	*
PLIST_FILES=	bin/avra

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/avra ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@(cd ${WRKSRC}/../doc && ${COPYTREE_SHARE} . ${DOCSDIR})
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	@(cd ${WRKSRC}/../examples && ${COPYTREE_SHARE} . ${EXAMPLESDIR})
.endif

.include <bsd.port.mk>
