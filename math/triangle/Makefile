# Created by: Thierry Thomas <thierry@pompo.net>
# $FreeBSD: math/triangle/Makefile 314605 2013-03-18 21:56:30Z eadler $

PORTNAME=	triangle
PORTVERSION=	1.6
PORTREVISION=	2
CATEGORIES=	math
MASTER_SITES=	NL
MASTER_SITE_SUBDIR=	voronoi
DISTNAME=	${PORTNAME}
DIST_SUBDIR=	${PORTNAME}-${PORTVERSION}

MAINTAINER=	bf@FreeBSD.org
COMMENT=	A Two-Dimensional Quality Mesh Generator and Delaunay Triangulator

NO_CDROM=	Triangle must not be sold for profit

NO_WRKSUBDIR=	yes
USE_ZIP=	yes
USE_XORG=	x11
MAKEFILE=	makefile

PLIST_FILES=	bin/triangle bin/showme

do-install:
	${INSTALL_PROGRAM} ${PLIST_FILES:S|^bin|${WRKSRC}|} ${PREFIX}/bin

.if defined(MAINTAINER_MODE)
test:	build
	(cd ${INSTALL_WRKSRC} && ./triangle -p A.poly && ./showme A.1.poly)
.endif

.include <bsd.port.mk>
