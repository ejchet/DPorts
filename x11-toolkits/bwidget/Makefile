# New ports collection makefile for: 	bwidget
# Date created:				Jan 29, 2002
# Whom:					Alexander Kabaev <ak03@gte.com>
#
# $FreeBSD: ports/x11-toolkits/bwidget/Makefile,v 1.16 2012/11/17 06:03:34 svnexp Exp $
#

PORTNAME=	bwidget
PORTVERSION=	1.9.2
CATEGORIES=	x11-toolkits
MASTER_SITES=	SF/tcllib/BWidget/${PORTVERSION}
DISTNAME=	BWidget-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A high-level widget set for Tcl/Tk

LICENSE=	BSD
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

USE_TK_RUN=	84+

NO_BUILD=	yes

.if !defined(NOPORTDOCS)
PORTDOCS=	*
.endif

do-install:
	@$(MKDIR) ${PREFIX}/lib/bwidget
	${INSTALL_DATA} ${WRKSRC}/*.tcl ${PREFIX}/lib/bwidget
	${TAR} -C ${WRKSRC} -cf - images lang | \
		${TAR} -v -C ${PREFIX}/lib/bwidget --unlink -xf -
	@${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/bwidget
.if !defined(NOPORTDOCS)
	@$(MKDIR) ${DOCSDIR}/BWman
	${INSTALL_DATA} ${WRKSRC}/BWman/*.html ${DOCSDIR}/BWman
. for FILE in CHANGES.txt ChangeLog README.txt
	${INSTALL_DATA} ${WRKSRC}/${FILE} ${DOCSDIR}/${FILE}
. endfor
.endif

.include <bsd.port.mk>
