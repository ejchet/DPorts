# New ports collection makefile for:	udunits
# Date created:		31 December 2004
# Whom:			Greg Lewis <glewis@FreeBSD.org>
#
# $FreeBSD: ports/science/udunits/Makefile,v 1.26 2012/11/17 06:01:00 svnexp Exp $
#

PORTNAME=	udunits
PORTVERSION=	2.1.24
PORTREVISION=	1
CATEGORIES=	science math
MASTER_SITES=	ftp://ftp.unidata.ucar.edu/pub/udunits/ \
		LOCAL/sunpoet

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	A library for manipulating units of physical quantities

LIB_DEPENDS=	expat.6:${PORTSDIR}/textproc/expat2

CONFIGURE_ENV=	ac_cv_header_CUnit_CUnit_h=no
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
MAKE_JOBS_SAFE=	yes
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes

INFO=		udunits2 udunits2lib udunits2prog

post-patch:
	@${REINPLACE_CMD} -e '/install-data-hook$$/d' ${WRKSRC}/lib/Makefile.in

.include <bsd.port.mk>
