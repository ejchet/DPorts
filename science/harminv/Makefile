# New ports collection makefile for: science/harminv
# Date created:		26 Dec 2009
# Whom:			Stas Timokhin <devel@stasyan.com>
#
# $FreeBSD: ports/science/harminv/Makefile,v 1.4 2012/11/17 06:00:57 svnexp Exp $
#

PORTNAME=	harminv
PORTVERSION=	1.3.1
PORTREVISION=	1
CATEGORIES=	science
MASTER_SITES=	http://ab-initio.mit.edu/harminv/

MAINTAINER=	devel@stasyan.com
COMMENT=	Solver of harmonic inversion

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_FORTRAN=	yes
USE_GCC=	4.4+
CPPFLAGS+=	-I${LOCALBASE}/include
LD_LIBRARY_PATH=	-L${LOCALBASE}/lib -L/usr/lib
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ENV+=	LD_LIBRARY_PATH="${LD_LIBRARY_PATH}"
USE_LDCONFIG=	yes

MAN1=	harminv.1

LIB_DEPENDS+=	guile.21:${PORTSDIR}/lang/guile \
		blas.2:${PORTSDIR}/math/blas \
		lapack.4:${PORTSDIR}/math/lapack

post-patch:
	${REINPLACE_CMD} -e 's#%%PKGDIR%%#${PREFIX}/libdata#g' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
