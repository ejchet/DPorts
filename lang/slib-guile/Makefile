# New ports collection makefile for:	SLIB for Guile
# Date created:				3 November 2003
# Whom:					Kimura Fuyuki <fuyuki@nigredo.org>
#
# $FreeBSD: ports/lang/slib-guile/Makefile,v 1.14 2012/11/17 05:58:56 svnexp Exp $
#    $MCom: ports/lang/slib-guile/Makefile,v 1.3 2006/10/13 02:32:48 marcus Exp $

PORTNAME=	slib
PORTVERSION=	3b3 # Keep this in sync with lang/slib
PORTREVISION=	1
CATEGORIES=	lang scheme
MASTER_SITES=	# empty
PKGNAMESUFFIX=	-guile
DISTFILES=	# empty

MAINTAINER=	ports@FreeBSD.org
COMMENT=	SLIB installation for Guile

BUILD_DEPENDS=	${LOCALBASE}/share/slib/require.scm:${PORTSDIR}/lang/slib \
		guile:${PORTSDIR}/lang/guile
RUN_DEPENDS:=	${BUILD_DEPENDS}

NO_BUILD=	yes

do-install:
	${LN} -shf ${PREFIX}/share/slib ${LOCALBASE}/share/guile/1.8/slib
	${LOCALBASE}/bin/guile -q -c \
	"(use-modules (ice-9 slib))(require 'new-catalog)"

.include <bsd.port.mk>
