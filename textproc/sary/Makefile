# Created by: Akinori MUSHA aka knu <knu@idaemons.org>
# $FreeBSD: textproc/sary/Makefile 316355 2013-04-23 14:20:25Z bapt $

PORTNAME=	sary
PORTVERSION=	1.2.0
PORTREVISION=	2
CATEGORIES=	textproc
MASTER_SITES=	http://sary.sourceforge.net/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A suffix array library and tools, which provide fast full-text search

USES=		pathfix pkgconfig
USE_GNOME=	glib20
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes

MAN1=		sary.1	mksary.1

post-patch:
	@${REINPLACE_CMD} -e '/^SUBDIRS/s|docs||g' ${WRKSRC}/Makefile.in

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC}/docs && ${FIND} . ! -name "*Makefile*" | \
		${CPIO} -pdm -L -R ${SHAREOWN}:${SHAREGRP} ${DOCSDIR}
.endif

.include <bsd.port.mk>
