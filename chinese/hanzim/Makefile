# ex:ts=8
# New ports collection makefile for:	hanzim
# Date created:			Sep 23, 2001
# Whom:				ijliao
#
# $FreeBSD: ports/chinese/hanzim/Makefile,v 1.17 2012/11/17 05:54:56 svnexp Exp $
#

PORTNAME=	hanzim
PORTVERSION=	1.3
PORTREVISION=	3
CATEGORIES=	chinese tk
MASTER_SITES=	http://kamares.ucsd.edu/~arobert/Files/Chinese/ \
		http://www.525183.com/freebsd/hanzim/ \
		http://www.chinatinco.com/freebsd/hanzim/ \
		http://525183.serverbox.org/freebsd/hanzim/
MASTER_SITE_SUBDIR=	. Old
EXTRACT_SUFX=	.tgz

MAINTAINER=	sunrychen@gmail.com
COMMENT=	A Chinese character learning-aid program

BUILD_DEPENDS+=	wish8.4:${PORTSDIR}/x11-toolkits/tk84
RUN_DEPENDS+=	wish8.4:${PORTSDIR}/x11-toolkits/tk84

WRKSRC=		${WRKDIR}/Hanzim
ALL_TARGET=	${PORTNAME}

MAN1=		hanzim.1

post-patch:
	@${REINPLACE_CMD} -e 's,%%PREFIX%%,${PREFIX},g' ${WRKSRC}/hanzim.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hanzim ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hanzim.man ${PREFIX}/man/man1/hanzim.1
	@${MKDIR} ${PREFIX}/lib/hanzim
	${INSTALL_DATA} ${WRKSRC}/Data/* ${PREFIX}/lib/hanzim
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/hanzim.doc ${DOCSDIR}
.endif
	${PREFIX}/bin/hanzim -port-install

.include <bsd.port.pre.mk>

.if ${ARCH} == "powerpc"
BROKEN=		Does not install on powerpc: signal 11
.endif

.include <bsd.port.post.mk>
