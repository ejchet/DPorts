# Created by: Jeremy Norris <ishmael27@home.com>
# $FreeBSD: graphics/giblib/Makefile 316343 2013-04-23 10:47:02Z bapt $

PORTNAME=	giblib
PORTVERSION=	1.2.4
PORTREVISION=	11
CATEGORIES=	graphics devel
MASTER_SITES=	http://linuxbrit.co.uk/downloads/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A utility library that includes a wrapper for imlib2

USE_AUTOTOOLS=	libtool
USES=	pathfix pkgconfig
USE_EFL=	imlib2
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

MAKE_JOBS_SAFE=	yes

post-patch:
	@${REINPLACE_CMD} -e 's|: install-docsDATA|:|g' ${WRKSRC}/Makefile.in

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in AUTHORS ChangeLog README TODO
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
