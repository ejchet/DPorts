# New ports collection makefile for:    termlog
# Date created:         20 August 2002
# Whom:                 C.S. Peron <bugs@sqrt.ca>
#
# $FreeBSD: ports/security/termlog/Makefile,v 1.15 2012/11/17 06:01:21 svnexp Exp $
#

PORTNAME=	termlog
PORTVERSION=	2.5
PORTREVISION=	1
CATEGORIES=	security sysutils
MASTER_SITES=	http://www.seccuris.com/documents/downloads/
MASTER_SITE_SUBDIR=	termlog

MAINTAINER=	csjp@FreeBSD.org
COMMENT=	Monitor or log multiple system terminals synchronously

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}
USE_RC_SUBR=	${PORTNAME}

MAN1=		termlog.1
PLIST_FILES=	bin/termlog

.include <bsd.port.pre.mk>

.if ${OSVERSION} > 900007
#BROKEN=		fails to build with new utmpx
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/termlog ${PREFIX}/bin/termlog
	${INSTALL_MAN} ${WRKSRC}/termlog.1 ${MANPREFIX}/man/man1/termlog.1

.include <bsd.port.post.mk>
