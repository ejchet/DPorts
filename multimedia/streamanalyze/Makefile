# New ports collection makefile for:	streamanalyze
# Date created:				2005-10-30
# Whom:					Heiner Eichmann
#
# $FreeBSD: ports/multimedia/streamanalyze/Makefile,v 1.9 2012/11/17 05:59:54 svnexp Exp $
#

PORTNAME=	streamanalyze
PORTVERSION=	0.4
PORTREVISION=	4
CATEGORIES=	multimedia
MASTER_SITES=	CENKES LOCAL/beech

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Shrink-factor calculator for StreamDVD

LIB_DEPENDS=	dvdread.4:${PORTSDIR}/multimedia/libdvdread

WRKSRC=		${WRKDIR}/StreamAnalyze

PLIST_FILES=	bin/streamanalyze
PORTDOCS=	README

post-patch:
	@${REINPLACE_CMD} -e 's|gcc -g -Wall|${CC} ${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib|' ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e '/#include <getopt\.h>/ d' ${WRKSRC}/streamanalyze.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/streamanalyze ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}
.endif

.include <bsd.port.mk>
