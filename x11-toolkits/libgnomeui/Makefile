# Created by: Joe Marcus Clarke <marcus@FreBSD.org>
# $FreeBSD: x11-toolkits/libgnomeui/Makefile 317223 2013-05-03 17:37:13Z ehaupt $
#   $MCom: ports/x11-toolkits/libgnomeui/Makefile,v 1.129 2010/09/27 20:16:41 kwm Exp $

PORTNAME=	libgnomeui
PORTVERSION=	2.24.4
PORTREVISION?=	2
CATEGORIES=	x11-toolkits gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Libraries for the GNOME GUI, a GNU desktop environment

USE_BZIP2=	yes

.if !defined(REFERENCE_PORT)

LIB_DEPENDS+=	gnome-keyring.0:${PORTSDIR}/security/gnome-keyring \
		startup-notification-1.0:${PORTSDIR}/x11/startup-notification
RUN_DEPENDS=	${LOCALBASE}/share/icons/gnome/index.theme:${PORTSDIR}/misc/gnome-icon-theme

USE_XORG=	sm
USE_GMAKE=	yes
USES=		bison pathfix gettext
USE_GNOME=	gnomeprefix gnomehier libbonoboui ltverhack \
		referencehack gvfs
USE_LDCONFIG=	yes
USE_AUTOTOOLS=	libtool

CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib ${PTHREAD_LIBS}"
CPPFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.mk>

.endif
