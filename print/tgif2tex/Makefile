# Created by: Satoshi TAOKA <taoka@FreeBSD.org>
# $FreeBSD: print/tgif2tex/Makefile 317151 2013-05-02 21:20:22Z hrs $

PORTNAME=	tgif2tex
PORTVERSION=	2.13
PORTREVISION=	4
CATEGORIES+=	print
MASTER_SITES=	http://www.cs.hiroshima-u.ac.jp/~nakano/tgif2tex/

MAINTAINER=	hrs@FreeBSD.org
COMMENT=	Converting texts in figure by tgif to LaTeX commands

LICENSE=	GPLv2

USE_PERL5_RUN=	yes
PLIST_FILES=	bin/tgif2tex
PORTDOCS= 	how-to-use.dvi how-to-use.ps how-to-use.tex \
		example.obj example.tex \
		original.dps original.tps \
		pythagoras.dps pythagoras.tps \
		sample1.obj sample1.ps \
		sample2.1.dps sample2.1.tps \
		sample2.2.dps sample2.2.tps \
		sample2.3.dps sample2.3.tps \
		sample2.dvi sample2.tex sample2.obj sample2.ps

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

do-build:
	${REINPLACE_CMD} \
		-e "s,%%LOCALBASE%%,${LOCALBASE}," \
		-e "s,^#!/usr/bin/perl,#!${PERL}," \
		${WRKSRC}/tgif2tex

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tgif2tex ${PREFIX}/bin/tgif2tex
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
