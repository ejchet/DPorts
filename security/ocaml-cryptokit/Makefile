# Created by: Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
# $FreeBSD: security/ocaml-cryptokit/Makefile 315566 2013-03-29 19:33:41Z cs $
#

PORTNAME=	cryptokit
PORTVERSION=	1.6
CATEGORIES=	security
MASTER_SITES=	http://forge.ocamlcore.org/frs/download.php/891/
PKGNAMEPREFIX=	ocaml-

MAINTAINER=	jaapb@kerguelen.org
COMMENT=	Variety of cryptographic primitives for Objective Caml

HAS_CONFIGURE=	yes

USE_OCAML=	yes
USE_OCAML_LDCONFIG=	yes
USE_OCAML_FINDLIB=	yes
USE_OCAMLFIND_PLIST=	yes
MAKE_JOBS_SAFE=	yes

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
ALL_TARGET+=	doc
CONFIGURE_ARGS+=	--docdir ${PREFIX}/share/doc/ocaml

PORTDOCS=	*
.endif

DOC_FILES=	Changes LICENSE README
DOCSDIR=	${PREFIX}/share/doc/ocaml/${PORTNAME}

.include <bsd.port.mk>
