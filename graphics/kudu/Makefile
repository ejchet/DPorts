# Created by: Dmitry Marakasov <amdmi3@amdmi3.ru>
# $FreeBSD: graphics/kudu/Makefile 322840 2013-07-12 15:01:45Z amdmi3 $

PORTNAME=	kudu
PORTVERSION=	0.1.2
PORTREVISION=	8
CATEGORIES=	graphics
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	3D skeletal animation tool, powered by GTK+ and OpenGL

LICENSE=	GPLv2

LIB_DEPENDS=	gtkglext-x11-1.0:${PORTSDIR}/x11-toolkits/gtkglext

USE_GL=		gl
USE_PYTHON=	yes
USE_BZIP2=	yes
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CFLAGS+=	${PTHREAD_CFLAGS}
CONFIGURE_ENV=	LIBS="${PTHREAD_LIBS} -lcompat"

DESKTOP_ENTRIES="Kudu" \
		"Edit 3D models" \
		"${DATADIR}/images/logo.png" \
		"kudu" \
		"Graphics;3DGraphics;GTK;" \
		true

post-patch:
	@${REINPLACE_CMD} -e 's|COPYING||' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
