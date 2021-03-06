# New ports collection makefile for:	aolserver-nsmhash
# Date created:		12 Oct 2006
# Whom:			Martin Matuska <mm@FreeBSD.org>
#
# $FreeBSD: ports/security/aolserver-nsmhash/Makefile,v 1.12 2013/02/06 19:12:36 svnexp Exp $
#

PORTNAME=	nsmhash
PORTVERSION=	1.1
PORTREVISION=	2
CATEGORIES=	security www
MASTER_SITES=	http://www.aolserver.cz/download/
PKGNAMEPREFIX=	aolserver-
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	aolserver

MAINTAINER=	ports@FreeBSD.org
COMMENT=	AOLserver interface to mhash library

PORTSCOUT=	skipv:2.0

WRKSRC=		${WRKDIR}

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

AOLSERVERBASE?=	aolserver
LIB_DEPENDS+=	mhash.2:${PORTSDIR}/security/mhash
BUILD_DEPENDS+=	${LOCALBASE}/${AOLSERVERBASE}/bin/nsd:${PORTSDIR}/www/aolserver
RUN_DEPENDS+=	${LOCALBASE}/${AOLSERVERBASE}/bin/nsd:${PORTSDIR}/www/aolserver

USE_GMAKE=	yes
MAKEFILE=	Makefile.ns

USE_TCL=	84+

PLIST_FILES=	${AOLSERVERBASE}/bin/nsmhash.so \
		${AOLSERVERBASE}/lib/libnsmhash.a \
		${AOLSERVERBASE}/lib/libnsmhash.so

.include <bsd.port.pre.mk>

CFLAGS+=	"-I${LOCALBASE}/include"
MAKE_ARGS+=	NSHOME="${LOCALBASE}/${AOLSERVERBASE}" \
		DLLLIBS="-L${LOCALBASE}/lib -lmhash" \
		MODLIBS="-L${LOCALBASE}/lib -lmhash"

.if !defined(NOPORTDOCS)
PORTDOCS=	AUTHORS CHANGES COPYING README
.endif

post-patch:
	@${REINPLACE_CMD} -e 's/^CFLAGS   =/CFLAGS  +=/g' \
		-e 's/^MODLIBS  =/MODLIBS +=/g' \
		-e '/^OBJS     =.*/{n;s/.*/MODOBJS  = $$(OBJS)/g;G;}' \
		${WRKSRC}/${MAKEFILE}

post-install:
.if !defined(NOPORTDOCS)
	@ ${MKDIR} ${DOCSDIR}
.for FILE in ${PORTDOCS}
	@ ${INSTALL_DATA} ${WRKSRC}/${FILE} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.post.mk>
