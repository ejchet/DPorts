# New ports collection makefile for:	bakery
# Date created:				12th September 2000
# Whom:					Ade Lovett <ade@FreeBSD.org>
#
# $FreeBSD: x11-toolkits/bakery/Makefile 316464 2013-04-24 18:10:30Z ak $
#   $MCom: ports/x11-toolkits/bakery/Makefile,v 1.16 2009/01/09 22:07:11 kwm Exp $
#

PORTNAME=	bakery
PORTVERSION=	2.6.3
PORTREVISION=	5
CATEGORIES=	x11-toolkits gnome
MASTER_SITES=	GNOME

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A C++ Application Framework for use with Gtkmm

LIB_DEPENDS=	gconfmm-2.6:${PORTSDIR}/devel/gconfmm26 \
		glademm-2.4:${PORTSDIR}/devel/libglademm24 \
		gnomevfsmm-2.6:${PORTSDIR}/devel/gnome-vfsmm \
		xml\\+\\+-2.6:${PORTSDIR}/textproc/libxml++26

USE_GNOME=	gnomehack gnomeprefix intlhack ltverhack
USE_BZIP2=	yes
USE_GMAKE=	yes
USES=		gettext
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

PLIST_SUB=	VERSION="2.6" API_VERSION="2.6"

post-patch:
	@${REINPLACE_CMD} -e '/^SUBDIRS =/s/examples//' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
