# Created by: Joe Marcus Clarke <marcus@FreeBSD.org>
# $FreeBSD: x11-toolkits/pangomm/Makefile 324037 2013-07-31 11:57:45Z kwm $
#   $MCom: ports/trunk/x11-toolkits/pangomm/Makefile 18610 2013-06-30 16:33:05Z marcus $

PORTNAME=	pangomm
PORTVERSION=	2.28.4
PORTREVISION?=	0
CATEGORIES=	x11-toolkits
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	C++ wrapper for Pango

USE_XZ=		yes

.if !defined(REFERENCE_PORT)

BUILD_DEPENDS=	gm4:${PORTSDIR}/devel/m4

GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USES=		gmake pathfix
USE_GNOME=	cairomm glibmm pango
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS=	--disable-documentation \
		--enable-static=yes

PLIST_SUB=	VERSION="2.4" API_VERSION="1.4"

post-patch:
.for d in tests
	@${REINPLACE_CMD} -e '/^SUBDIRS =/s/${d}//' \
		${WRKSRC}/Makefile.in
.endfor

.include <bsd.port.mk>

.endif
