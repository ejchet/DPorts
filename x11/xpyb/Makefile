# Created by: Ashish Shukla <wahjava@gmail.com>
# $FreeBSD: x11/xpyb/Makefile 319055 2013-05-25 14:37:02Z zeising $

PORTNAME=	xpyb
PORTVERSION=	1.3.1
CATEGORIES=	x11 python
MASTER_SITES=	http://xcb.freedesktop.org/%SUBDIR%/
MASTER_SITE_SUBDIR=	dist
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ashish@FreeBSD.org
COMMENT=	Python bindings to access X Window System protocol via libxcb

BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/xcb-proto.pc:${PORTSDIR}/x11/xcb-proto \
		xcb-proto>=1.7.1:${PORTSDIR}/x11/xcb-proto

USE_BZIP2=	yes
USE_PYTHON=	2.5+
USE_XORG=	xcb
USES=	pathfix
PORTDOCS=	README COPYING INSTALL NEWS XcbPythonBinding.txt

GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.pre.mk>

.if defined(NOPORTDOCS)
post-patch:
	@${REINPLACE_CMD} -e 's/^\(install-data-am:.*\)install-dist_docDATA\(.*\)$$/\1\2/' \
		-e 's/^\(SUBDIRS =.*\)doc\(.*\)$$/\1\2/' ${WRKSRC}/Makefile.in
.endif

.include <bsd.port.post.mk>
