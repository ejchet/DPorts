# New ports collection makefile for:    ppmtoTbmp
# Date created:         30th May 2001
# Whom:                 Jose Marques <noway@nohow.demon.co.uk>
#
# $FreeBSD: ports/palm/ppmtoTbmp/Makefile,v 1.17 2012/11/17 06:00:44 svnexp Exp $
#

PORTNAME=	ppmtoTbmp
PORTVERSION=	1.1
PORTREVISION=	4
CATEGORIES=	palm graphics
MASTER_SITES=	http://www.isaac.cs.berkeley.edu/pilot/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PPM to Pilot bitmap converter

LIB_DEPENDS=	netpbm.1:${PORTSDIR}/graphics/netpbm

LDFLAGS+=	-L${LOCALBASE}/lib
MAKE_ARGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" LDLIBS=-lnetpbm

post-patch:
	@${REINPLACE_CMD} -e '/^#include "ppmcmap.h"/d' ${WRKSRC}/ppmtoTbmp.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ppmtoTbmp ${WRKSRC}/Tbmptopnm \
		${PREFIX}/bin
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/ppmtoTbmp
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ppmtoTbmp
.endif
	${MKDIR} ${PREFIX}/share/ppmtoTbmp
	${INSTALL_DATA} ${WRKSRC}/q?.map ${PREFIX}/share/${PORTNAME}

.include <bsd.port.mk>
