# New ports collection makefile for:	latex-logpap
# Date created:		14 Feb 2004
# Whom:			hrs@FreeBSD.org
#
# $FreeBSD: print/latex-logpap/Makefile 317899 2013-05-11 17:58:55Z hrs $

PORTNAME=	latex-logpap
PORTVERSION=	0.6.20040201
PORTREVISION=	6
CATEGORIES=	print
MASTER_SITES=	ftp://ftp.ctan.org/tex-archive/%SUBDIR%/ \
		${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR=	macros/latex/contrib/logpap
DISTFILES=	${DOC_FILES} logpap.dtx logpap.ins
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	hrs@FreeBSD.org
COMMENT=	A LaTeX package for drawing logarithmic graph paper

PLIST_SUB=	TEXMFLOCAL=${TEXMFLOCAL} MKTEXLSR=${MKTEXLSR} \
		CLASSDIR=${CLASSDIR}

USE_TEX=	latex
USE_GMAKE=	YES
TEXMFLOCAL=	share/texmf-local
TEXMFLOCAL_LSR=	${LOCALBASE}/${TEXMFLOCAL}/ls-R
MKTEXLSR=	${LOCALBASE}/bin/mktexlsr
TEX_BIN=	${LOCALBASE}/bin/etex
YES_CMD=	/usr/bin/yes

CLASSDIR=	${TEXMFLOCAL}/tex/latex/${PORTNAME:S/^latex-//}
WRKSRC=		${WRKDIR}/${PORTNAME:S/^latex-//}
CLASS_FILES=	logpap.dtx logpap.ins logpap.sty example.tex
DOC_FILES=	README example.pdf

do-extract:
	${MKDIR} ${WRKSRC}
	cd ${DISTDIR}/${DIST_SUBDIR} && ${CP} ${DISTFILES} ${WRKSRC}

do-build:
	cd ${WRKSRC} && ${YES_CMD} | ${TEX_BIN} logpap.ins

do-install:
	${MKDIR} ${PREFIX}/${CLASSDIR}
	${INSTALL_DATA} ${CLASS_FILES:S@^@${WRKSRC}/@} ${PREFIX}/${CLASSDIR}
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${DOC_FILES:S@^@${WRKSRC}/@} ${DOCSDIR}
.endif

post-install:
	@${MKTEXLSR}

.include <bsd.port.mk>
