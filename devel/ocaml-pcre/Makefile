# Created by: Henrik Motakef <henrik.motakef@web.de>
# $FreeBSD: devel/ocaml-pcre/Makefile 313426 2013-03-04 22:53:15Z johans $

PORTNAME=	pcre
PORTVERSION=	7.0.2
CATEGORIES=	devel
MASTER_SITES=	http://cdn.bitbucket.org/mmottl/pcre-ocaml/downloads/
PKGNAMEPREFIX=	ocaml-
DISTNAME=	${PORTNAME}-${PKGNAMEPREFIX}${PORTVERSION}

MAINTAINER=	johans@FreeBSD.org
COMMENT=	Perl compatible regular expressions for Objective Caml

LIB_DEPENDS=	pcre:${PORTSDIR}/devel/pcre

USE_OCAML=	yes
USE_OCAML_FINDLIB=	yes
USE_OCAML_LDCONFIG=	yes

PORTEXAMPLES=	*
EXAMPLESDIR=	${OCAML_EXAMPLESDIR}/${PORTNAME}

PORTDOCS=	*
DOCSDIR=	${PREFIX}/share/doc/pcre-ocaml

post-install:
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	@(cd ${WRKSRC}/examples && ${COPYTREE_SHARE} \* ${EXAMPLESDIR}/)
.endif

.include <bsd.port.mk>
