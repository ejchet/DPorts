# New ports collection makefile for:	beav
# Date created:		01 July 1995
# Whom:			Thomas Gellekum <tg@FreeBSD.org>
#
# $FreeBSD: ports/editors/beav/Makefile,v 1.31 2012/11/17 05:57:11 svnexp Exp $
#

PORTNAME=	beav
PORTVERSION=	1.40.18
PORTREVISION=	1
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_DEBIAN_POOL}
DISTNAME=	${PORTNAME}_${PORTVERSION:R}.orig

PATCH_SITES=	${MASTER_SITES}
PATCHFILES=	${PORTNAME}_${PORTVERSION:R}-${PORTVERSION:E}.diff.gz
PATCH_DIST_STRIP=	-p1

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Binary Editor And Viewer, a full featured binary file editor

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION:R:S/.//}

ALL_TARGET=	beav

MAN1=		beav.1

post-patch:
	@${REINPLACE_CMD} -e 's|^CFLAGS=|CFLAGS+=-DUNIX -DBSD -DNOPROTO#|g ; \
		 s|^CC=|CC?=|g ; \
		 s|^(|\$$(|g' ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e 's|/usr/share/doc/beav|${DOCSDIR}|g ; \
		s|beav140.txt.gz|beav.txt|' ${WRKSRC}/beav.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/beav ${PREFIX}/bin/beav
	${INSTALL_MAN} ${WRKSRC}/beav.1 ${MANPREFIX}/man/man1/beav.1
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/beav140.txt ${DOCSDIR}/beav.txt
.endif

.include <bsd.port.mk>
