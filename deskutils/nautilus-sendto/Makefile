# Created by: Michael Johnson <ahze@FreeBSD.org>
# $FreeBSD: deskutils/nautilus-sendto/Makefile 316596 2013-04-26 10:44:28Z ak $
#    $MCom: ports/deskutils/nautilus-sendto/Makefile,v 1.30 2010/09/30 06:21:18 kwm Exp $

PORTNAME=	nautilus-sendto
PORTVERSION=	2.32.0
PORTREVISION=	2
CATEGORIES=	deskutils
MASTER_SITES=	GNOME

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Integration between nautilus, evolution, and pidgin

MAN1=		nautilus-sendto.1
GLIB_SCHEMAS=	org.gnome.Nautilus.Sendto.gschema.xml
USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USES=		pathfix gettext
USE_GNOME=	intlhack gnomeprefix nautilus2 gnomehack evolutiondataserver
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS=	--with-plugins="${SENDTO_PLUGINS}"

OPTIONS_DEFINE=	PIDGIN UPNP
PIDGIN_DESC=	Build pidgin sendto plugin
UPNP_DESC=	Build upnp sendto plugin

# check configure script for allowed_plugins="..." for new plugins
SENDTO_PLUGINS=	evolution gajim nautilus-burn removable-devices

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MPIDGIN}
SENDTO_PLUGINS:=${SENDTO_PLUGINS} pidgin
LIB_DEPENDS+=	dbus-glib-1:${PORTSDIR}/devel/dbus-glib
RUN_DEPENDS+=	pidgin:${PORTSDIR}/net-im/pidgin
PLIST_SUB+=	PIDGIN=""
.else
PLIST_SUB+=	PIDGIN="@comment "
.endif

.if ${PORT_OPTIONS:MUPNP}
SENDTO_PLUGINS:=${SENDTO_PLUGINS} upnp
LIB_DEPENDS+=	gupnp-1:${PORTSDIR}/net/gupnp
PLIST_SUB+=	UPNP=""
.else
PLIST_SUB+=	UPNP="@comment "
.endif

.include <bsd.port.mk>
