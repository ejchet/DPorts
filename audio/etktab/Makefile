# New ports collection makefile for:	etktab
# Date created:		29 January 2003
# Whom:			Juha Erkkil� <erkkila@cc.jyu.fi>
#
# $FreeBSD: ports/audio/etktab/Makefile,v 1.8 2012/11/17 05:54:30 svnexp Exp $
#

PORTNAME=	etktab
PORTVERSION=	3.2
PORTREVISION=	2
CATEGORIES=	audio tcl tk
MASTER_SITES=	SF/${PORTNAME}/eTktab/${PORTVERSION} \
		SF/${PORTNAME}/keyboard%20layout%20support/${PORTVERSION}:keyboard
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}:DEFAULT
.if !defined(NOPORTDOCS)
DISTFILES+=	canada_multi-3.2.etk:keyboard \
		dvorak-3.2.etk:keyboard \
		uk-3.2.etk:keyboard \
		us-3.2.etk:keyboard
.endif
DIST_SUBDIR=	${PORTNAME}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Guitar tablature editor

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/eTktab-${PORTVERSION}

USE_TK_WRAPPER=	yes

post-extract:
.for FILE in canada_multi-3.2.etk dvorak-3.2.etk uk-3.2.etk us-3.2.etk
	@${CP} ${DISTDIR}/${DIST_SUBDIR}/${FILE} ${WRKSRC}
.endfor

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/eTktab ${PREFIX}/bin/etktab
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for FILE in CHANGES.html LICENSE.html README.html eTktab-small.xpm eTktab.xpm \
		canada_multi-3.2.etk dvorak-3.2.etk uk-3.2.etk us-3.2.etk
	${INSTALL_DATA} ${WRKSRC}/${FILE} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
