# New ports collection makefile for:   pngnq
# Date created:        10 May 2009
# Whom:                stb@lassitu.de
#
# $FreeBSD: ports/graphics/pngnq/Makefile,v 1.8 2012/11/17 05:58:19 svnexp Exp $
#

PORTNAME=	pngnq
PORTVERSION=	1.1
PORTREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	SF

MAINTAINER=	stb@lassitu.de
COMMENT=	A tool for quantizing PNG images in RGBA format

LICENSE=	BSD

LIB_DEPENDS=	png15:${PORTSDIR}/graphics/png

GNU_CONFIGURE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
CONFIGURE_ENV+=	LIBS=-lpng
LDFLAGS+=	-L${LOCALBASE}/lib

USE_GNOME=	pkgconfig

PORTDOCS=	README COPYING
PLIST_FILES=	bin/pngcomp bin/pngnq
MAN1=		pngnq.1

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for i in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
