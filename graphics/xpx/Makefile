# Created by: Seiichirou Hiraoka
# $FreeBSD: graphics/xpx/Makefile 321957 2013-06-28 11:51:05Z bapt $

PORTNAME=	xpx
PORTVERSION=	1.41
PORTREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	http://www2s.biglobe.ne.jp/~yav/soft/xpx/
DISTNAME=	${PORTNAME}${PORTVERSION:S/.//}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple pixel editing tool to generate data for KISS

WRKSRC=		${WRKDIR}/${PORTNAME}

USES=		imake
USE_XORG=	x11 xext
XMKMF=		xmkmf

DOCSDIR=	${PREFIX}/share/doc/ja/${PORTNAME}
PORTDOCS=	xpx.doc xpxrc.eg
PLIST_FILES=	bin/xpx

post-patch:
	@${REINPLACE_CMD} -e 's|myname|my_name|g' ${WRKSRC}/magtoppm.c
	@${REINPLACE_CMD} -e '/edit_mode/d' ${WRKSRC}/work.h

pre-configure:
	@(cd ${CONFIGURE_WRKSRC}; ${SH} configure)

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
