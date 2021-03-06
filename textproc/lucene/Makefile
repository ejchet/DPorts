# Created by: Gerrit Beine <gerrit.beine@gmx.de>
# $FreeBSD: textproc/lucene/Makefile 318740 2013-05-22 00:19:45Z bdrewery $

PORTNAME=	lucene
PORTVERSION=	3.6.2
# Be sure to chase devel/openoffice-devel and textproc/py-lucene
# when updating this
CATEGORIES=	textproc java devel
MASTER_SITES=	APACHE
MASTER_SITE_SUBDIR=	${PORTNAME}/java/${PORTVERSION}/
EXTRACT_SUFX=	.tgz

MAINTAINER=	danilogondolfo@gmail.com
COMMENT=	Full-text search engine for Java

LICENSE=	AL2

CONFLICTS=	lucene4-[0-9].*

PORTSCOUT=	limit:^3\.

USE_JAVA=	yes
NO_BUILD=	yes
JAVA_VERSION=	1.6+

OPTIONS_DEFINE=	CONTRIB
CONTRIB_DESC=	Install contributed jars
OPTIONS_DEFAULT=	CONTRIB

PLIST_FILES=	%%JAVAJARDIR%%/${PORTNAME}-core-${PORTVERSION}.jar

.include <bsd.port.options.mk>

CONTRIBS=	benchmark \
		demo \
		facet	\
		grouping \
		highlighter \
		icu \
		instantiated \
		join	\
		memory \
		misc \
		pruning \
		queries \
		queryparser	\
		remote	\
		spatial \
		spellchecker \
		xml-query-parser

EXTRA_CONTRIBS_BASE=	analyzers

EXTRA_CONTRIBS_DIRS=	kuromoji \
		phonetic \
		smartcn \
		stempel

.if ${PORT_OPTIONS:MCONTRIB}
.for f in ${EXTRA_CONTRIBS_BASE} ${CONTRIBS} ${EXTRA_CONTRIBS_DIRS}
PLIST_FILES+=%%JAVAJARDIR%%/${PORTNAME}-${f}-${PORTVERSION}.jar
.endfor
.endif

PORTDOCS=	*
PORTEXAMPLES=	*

DEMODIR=	contrib/demo

do-install:
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}-core-${PORTVERSION}.jar ${JAVAJARDIR}
.if ${PORT_OPTIONS:MCONTRIB}
. for f in ${CONTRIBS}
	${INSTALL_DATA} ${WRKSRC}/contrib/${f}/${PORTNAME}-${f}-${PORTVERSION}.jar ${JAVAJARDIR}
. endfor
. for d in ${EXTRA_CONTRIBS_DIRS}
	${INSTALL_DATA} ${WRKSRC}/contrib/${EXTRA_CONTRIBS_BASE}/${d}/${PORTNAME}-${d}-${PORTVERSION}.jar ${JAVAJARDIR}
. endfor
	${INSTALL_DATA} ${WRKSRC}/contrib/${EXTRA_CONTRIBS_BASE}/common/${PORTNAME}-${EXTRA_CONTRIBS_BASE}-${PORTVERSION}.jar ${JAVAJARDIR}
.endif

.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for i in CHANGES.txt LICENSE.txt NOTICE.txt README.txt
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
	(cd ${WRKSRC}/docs && ${COPYTREE_SHARE} \* ${DOCSDIR})
.endif

.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${EXAMPLESDIR}
	(cd ${WRKSRC}/${DEMODIR} && ${COPYTREE_SHARE} \* ${EXAMPLESDIR})
.endif

.include <bsd.port.mk>
