# Created by: Joe Marcus Clarke <marcus@FreeBSD.org>
# $FreeBSD: net/gtk-vnc/Makefile 317220 2013-05-03 16:36:39Z ehaupt $

PORTNAME=	gtk-vnc
PORTVERSION=	0.3.10
PORTREVISION=	9
CATEGORIES=	net gnome
MASTER_SITES=	GNOME

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	VNC viewer widget for GTK+

LIB_DEPENDS=	gnutls:${PORTSDIR}/security/gnutls \
		gcrypt:${PORTSDIR}/security/libgcrypt \
		sasl2:${PORTSDIR}/security/cyrus-sasl2 \
		gtkglext-x11-1.0:${PORTSDIR}/x11-toolkits/gtkglext

CONFLICTS=	gtk-vnc-0.4.[0-9]*

USE_GNOME=	pygtk2 gnomehack
USE_GMAKE=	yes
USES=		gettext
USE_LDCONFIG=	yes
USE_PYTHON=	yes
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS=	--with-gtkglext=yes

.include <bsd.port.mk>
