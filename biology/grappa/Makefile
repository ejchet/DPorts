# New ports collection makefile for:	grappa
# Date created:		30 June 2001
# Whom:                 dbader@ece.unm.edu
#
# $FreeBSD: ports/biology/grappa/Makefile,v 1.10 2012/11/17 05:54:51 svnexp Exp $
#

PORTNAME=	grappa
PORTVERSION=	2.0
CATEGORIES=	biology
MASTER_SITES=	http://www.cs.unm.edu/~moret/GRAPPA/
DISTNAME=	GRAPPA20

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Genome Rearrangements Analysis and Phylogeny Software

USE_GMAKE=	yes

PLIST_FILES=	bin/grappa bin/invdist bin/distmat

post-patch:
	@${REINPLACE_CMD} -e 's/-lpthread/${PTHREAD_LIBS}/g' ${WRKSRC}/${MAKEFILE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/grappa ${PREFIX}/bin
	${LN} -sf ${PREFIX}/bin/grappa ${PREFIX}/bin/invdist
	${LN} -sf ${PREFIX}/bin/grappa ${PREFIX}/bin/distmat

.include <bsd.port.mk>
