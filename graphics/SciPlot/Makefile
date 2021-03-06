# Created by: thierry@pompo.net
# $FreeBSD: graphics/SciPlot/Makefile 322621 2013-07-10 06:55:28Z bapt $

PORTNAME=	SciPlot
PORTVERSION=	1.36
PORTREVISION=	3
CATEGORIES=	graphics math
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	widgets

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Full-featured Xt widget to display 2D data in a graph

USES=		imake motif
USE_XORG=	xp
MAKE_ENV=	EXTRA_DEFINES="-fPIC" LIBNAME=${LIBNAME}
USE_LDCONFIG=	yes

INCLUDES=	SciPlot.h SciPlotP.h SciPlotUtil.h
LIBNAME=	lib${PORTNAME:tl}	# Remove :L for libSciPlot
PLIST_SUB=	LIBNAME=${LIBNAME}

PORTDOCS=	README SciPlot.html SciPlotDemo.html SciPlotProg.html
EXDATA=		data.txt
EXBINS=		realtime sciplot

do-install:
	${MKDIR} ${PREFIX}/include/${PORTNAME}
	${INSTALL_DATA} ${INCLUDES:S|^|${WRKSRC}/|} ${PREFIX}/include/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/${LIBNAME}.a ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/${LIBNAME}.so.0 ${PREFIX}/lib
	(cd ${PREFIX}/lib; ${LN} -sf ${LIBNAME}.so.0 ${LIBNAME}.so)

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
	${MKDIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${EXDATA:S|^|${WRKSRC}/|} ${EXAMPLESDIR}
	${INSTALL_PROGRAM} ${EXBINS:S|^|${WRKSRC}/|} ${EXAMPLESDIR}
	@${ECHO_MSG} "===> Examples installed in ${EXAMPLESDIR}."
.endif

.include <bsd.port.mk>
