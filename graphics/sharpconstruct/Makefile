# Created by: Dmitry Marakasov <amdmi3@amdmi3.ru>
# $FreeBSD: graphics/sharpconstruct/Makefile 323503 2013-07-22 22:50:30Z amdmi3 $

PORTNAME=	sharpconstruct
PORTVERSION=	0.11
PORTREVISION=	8
CATEGORIES=	graphics
MASTER_SITES=	SF/sharp3d/SharpConstruct/${PORTVERSION}

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	3D modeller for organic shapes

LIB_DEPENDS=	gtkglextmm-x11-1.2:${PORTSDIR}/x11-toolkits/gtkglextmm \
		glademm-2.4:${PORTSDIR}/devel/libglademm24

USE_BZIP2=	yes
USE_GL=		yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

ONLY_FOR_ARCHS=	i386 amd64
ONLY_FOR_ARCHS_REASON=	uses SSE

MAN1=		sharpconstruct.1

post-patch:
	@${REINPLACE_CMD} -e 's|malloc.h|stdlib.h|' ${WRKSRC}/include/Align.hh
	@${REINPLACE_CMD} -e 's|"/sharpconstruct|"|' ${WRKSRC}/src/MainWindow.cc
	@${REINPLACE_CMD} -e 's|/usr/share/sharpconstruct|${DATADIR}|' ${WRKSRC}/src/MainWindow.cc
	@${REINPLACE_CMD} -e '/FileDialog/,/}/ d' ${WRKSRC}/src/MainWindow.cc
	@${REINPLACE_CMD} -e 's|memalign(b,c)|malloc(c)|' ${WRKSRC}/include/Align.hh
	@${FIND} ${WRKSRC} -name Makefile.in -print0 | ${XARGS} -0 \
		${REINPLACE_CMD} -e '/^DEFS / s|$$| -DDATADIR=\\"${DATADIR}\\"|'

.include <bsd.port.mk>
