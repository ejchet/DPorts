# New ports collection makefile for:	libpgf
# Date Created:				2012-06-04
# Whom:					Jason E. Hale <bsdkaffee@gmail.com>
#
# $FreeBSD: ports/graphics/libpgf/Makefile,v 1.3 2012/11/17 05:58:13 svnexp Exp $
#

PORTNAME=	libpgf
PORTVERSION=	6.12.24
CATEGORIES=	graphics
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTVERSION}-latest/ \
		SF/${PORTNAME}/${PORTNAME}/${PORTVERSION}/
DISTNAME=	${PORTNAME}-${PORTVERSION}-src

MAINTAINER=	jhale@FreeBSD.org
COMMENT=	Progressive Graphics Format (PGF) library

LICENSE=	LGPL21

USE_AUTOTOOLS=	libtoolize aclocal autoheader automake autoconf
USE_LDCONFIG=	yes

LIBTOOLIZE_ARGS=--copy --force
AUTOMAKE_ARGS=	--add-missing --copy
ACLOCAL_ARGS=	-I ${LOCALBASE}/share/aclocal

WRKSRC=		${WRKDIR}/${PORTNAME}

pre-configure:
	@cd ${WRKSRC}; ${TOUCH} NEWS AUTHORS

.include <bsd.port.mk>
