# Created by: Camson Huynh <chuynh@biolateral.com.au>
# $FreeBSD: biology/gff2ps/Makefile 321308 2013-06-19 18:56:37Z bsam $

PORTNAME=	gff2ps
PORTVERSION=	0.98d
PORTREVISION=	2
CATEGORIES=	biology
MASTER_SITES=	ftp://genome.crg.es/pub/gff_tools/gff2ps/ \
		http://genome.crg.es/software/gfftools/gff2ps_docs/manual/:doc
DISTFILES=	${PORTNAME}_v${PORTVERSION}.gz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Converts gff-formated genomic data-sets to PostScript

LICENSE=	GPLv2 # (or later)

RUN_DEPENDS=	gawk:${PORTSDIR}/lang/gawk \
		bash:${PORTSDIR}/shells/bash

NO_WRKSUBDIR=	yes
NO_BUILD=	yes

PORTDOCS=	${GFF2PS_MAN}
PLIST_FILES=	bin/${PORTNAME}

GFF2PS_MAN=	MANUAL_GFF2PS_v0.96.ps

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
DISTFILES+=	${GFF2PS_MAN}.gz:doc
.endif

do-extract:
	@${MKDIR} ${WRKDIR}
	@${GZCAT} ${DISTDIR}/${PORTNAME}_v${PORTVERSION}.gz \
		> ${WRKDIR}/${PORTNAME}
.if ${PORT_OPTIONS:MDOCS}
	@${GZCAT} ${DISTDIR}/${GFF2PS_MAN}.gz > ${WRKDIR}/${GFF2PS_MAN}
.endif

post-patch:
	@${REINPLACE_CMD} -e \
		's|^#!/bin/bash|#!${LOCALBASE}/bin/bash| ; \
		 s|/usr/local/bin/gawk|${LOCALBASE}/bin/gawk|' ${WRKSRC}/gff2ps

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/gff2ps ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKDIR}/${GFF2PS_MAN} ${DOCSDIR}
.endif

.include <bsd.port.mk>
