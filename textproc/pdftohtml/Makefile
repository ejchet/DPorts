# ex:ts=8
# New ports collection makefile for:	pdftohtml
# Date created:			1 Jun 2001
# Whom:				Soeren Boll Overgaard <boll@tolkien.dk>
#
# $FreeBSD: textproc/pdftohtml/Makefile 318312 2013-05-16 13:08:03Z erwin $
#

PORTNAME=	pdftohtml
PORTVERSION=	0.39
PORTREVISION=	6
CATEGORIES=	textproc
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A command-line tool for converting pdf-files into html

USE_GHOSTSCRIPT_RUN=	yes
USE_GMAKE=	yes

PLIST_FILES=	bin/pdf-to-html

WRKSRC=		${WRKDIR}/${DISTNAME}

pre-patch:
	@${FIND} ${WRKSRC} -name Makefile | ${XARGS} \
		${REINPLACE_CMD} -e "s|-O[0-9]||" -e "s|-g||"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/pdftohtml ${PREFIX}/bin/pdf-to-html

.include <bsd.port.mk>
