# Created by: mukai
# $FreeBSD: devel/ocaml-extlib/Makefile 318599 2013-05-20 13:57:11Z miwi $

PORTNAME=	extlib
PORTVERSION=	1.5.4
CATEGORIES=	devel
MASTER_SITES=	GOOGLE_CODE
PROJECTHOST=	${PKGNAMEPREFIX}${PORTNAME}
PKGNAMEPREFIX=	ocaml-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Complete - yet small - standard library for OCaml

LICENSE=	LGPL21

OPTIONS_DEFINE=	DOCS

USE_OCAML=	yes
USE_OCAML_FINDLIB=yes
USE_OCAMLFIND_PLIST=yes

ALL_TARGET=	all opt

DOCSDIR=	${OCAML_DOCSDIR}/${PORTNAME}

PORTDOCS=	*

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
ALL_TARGET+=	doc
PLIST_DIRSTRY=	${OCAML_DOCSDIR:S,^${PREFIX}/,,}
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	(cd ${WRKSRC}/doc && ${INSTALL_DATA} * ${DOCSDIR})
.endif

.include <bsd.port.mk>
