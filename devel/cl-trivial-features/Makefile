# $FreeBSD: ports/devel/cl-trivial-features/Makefile,v 1.4 2013/01/26 15:07:24 svnexp Exp $

PORTNAME=	trivial-features
PORTVERSION=	2010.01.16
PORTREVISION=	1
CATEGORIES=	devel lisp
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	olgeni
PKGNAMEPREFIX=	cl-

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Ensures consistent *FEATURES* in Common Lisp

NO_BUILD=	yes

USE_ASDF=	yes

do-install:
	@${MKDIR} ${ASDF_PATHNAME}
	@${MKDIR} ${ASDF_PATHNAME}/src
	@${INSTALL_DATA} ${WRKSRC}/src/*.lisp ${ASDF_PATHNAME}/src
	@${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.asd ${ASDF_PATHNAME}
	@${LN} -sf ${ASDF_PATHNAME}/*.asd ${ASDF_REGISTRY}

.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for FILE in README SPEC
	@${INSTALL_DATA} ${WRKSRC}/${FILE} ${DOCSDIR}
.endfor
.endif
.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	@${INSTALL_DATA} ${WRKSRC}/tests/* ${EXAMPLESDIR}
.endif

.include "${.CURDIR}/../../devel/cl-asdf/bsd.cl-asdf.mk"
.include <bsd.port.mk>
