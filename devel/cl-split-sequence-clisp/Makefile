# Created by: Henrik Motakef <henrik.motakef@web.de>
# $FreeBSD: ports/devel/cl-split-sequence-clisp/Makefile,v 1.15 2013/02/18 14:39:09 svnexp Exp $

PORTNAME=	split-sequence
PORTVERSION=	20011114.1
PORTREVISION=	5
CATEGORIES=	devel lisp
PKGNAMEPREFIX=	cl-
DISTFILES=	# none

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Partitioning Common Lisp sequences

BUILD_DEPENDS=	${LOCALBASE}/${CL_LIBDIR_REL}/split-sequence/split-sequence.asd:${PORTSDIR}/devel/cl-split-sequence
RUN_DEPENDS=	${LOCALBASE}/${CL_LIBDIR_REL}/split-sequence/split-sequence.asd:${PORTSDIR}/devel/cl-split-sequence

USE_ASDF_FASL=	yes
FASL_TARGET=	clisp
FASL_BUILD=	yes

.include "${.CURDIR}/../../devel/cl-asdf/bsd.cl-asdf.mk"
.include <bsd.port.mk>
