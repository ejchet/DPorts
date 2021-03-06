# Created by: Joe Marcus Clarke <marcus@FreeBSD.org>
# $FreeBSD: x11/gnome-applets/Makefile 318111 2013-05-13 15:40:04Z kwm $
#   $MCom: ports/x11/gnome-applets/Makefile,v 1.219 2011/04/10 19:41:38 mezz Exp $

PORTNAME=	gnome-applets
PORTVERSION=	2.32.1.1
PORTREVISION=	4
CATEGORIES=	x11 gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Applets components for the GNOME 2 Desktop Environment

BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/system-tools-backends-2.0.pc:${PORTSDIR}/sysutils/system-tools-backends \
		${LOCALBASE}/libexec/gnome-settings-daemon:${PORTSDIR}/sysutils/gnome-settings-daemon
LIB_DEPENDS=	gtop-2.0:${PORTSDIR}/devel/libgtop \
		gweather:${PORTSDIR}/net/libgweather \
		polkit-gobject-1:${PORTSDIR}/sysutils/polkit \
		xklavier:${PORTSDIR}/x11/libxklavier \
		gucharmap:${PORTSDIR}/deskutils/gucharmap
RUN_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/system-tools-backends-2.0.pc:${PORTSDIR}/sysutils/system-tools-backends \
		${LOCALBASE}/libexec/gnome-settings-daemon:${PORTSDIR}/sysutils/gnome-settings-daemon

USE_BZIP2=	yes
USE_GMAKE=	yes
INSTALLS_OMF=	yes
INSTALLS_ICONS=	yes
USE_LDCONFIG=	yes
USES=		pathfix gettext
USE_GNOME=	gnomeprefix intlhack gnomepanel gnomedocutils libgnomekbd
WANT_GNOME=	yes
USE_GSTREAMER=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-mixer-applet \
		--disable-networkmanager
CONFIGURE_ENV=	OS_SYS="/usr/include"
CPPFLAGS+=	-I${LOCALBASE}/include ${PTHREAD_CFLAGS}
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}

GCONF_SCHEMAS=	charpick.schemas drivemount.schemas geyes.schemas \
		mixer.schemas multiload.schemas stickynotes.schemas

OPTIONS_DEFINE=	MINI_COMMANDER NOTIFY
MINI_COMMANDER_DESC=	Mini-commander applet

.include <bsd.port.options.mk>

.if exists(${LOCALBASE}/libdata/pkgconfig/libnotify.pc) || \
	${PORT_OPTIONS:MNOTIFY}
LIB_DEPENDS+=	notify:${PORTSDIR}/devel/libnotify
.endif

.if ${PORT_OPTIONS:MMINI_COMMANDER}
CONFIGURE_ARGS+=	--enable-mini-commander
GCONF_SCHEMAS+=	mini-commander-global.schemas mini-commander.schemas
PLIST_SUB+=	COMMANDER="" OLDCOMMANDER="@comment "
.else
PLIST_SUB+=	COMMANDER="@comment " OLDCOMMANDER=""
.endif

.if defined(PACKAGE_BUILDING)
.undef WITHOUT_GNOME 	 
WITH_GNOME=	yes 	 
.endif

.include <bsd.port.pre.mk>

.if ( exists(${pygnomedesktop_DETECT}) ) || \
	( ( ${HAVE_GNOME:Mpygnomedesktop}!="" ) && ${ARCH}!="sparc64" )
USE_PYTHON=	yes
.include "${PORTSDIR}/Mk/bsd.python.mk"
USE_GNOME+=	pygnomedesktop
PLIST_SUB+=	PYTHON=""
.else
PLIST_SUB+=	PYTHON="@comment "
.endif

.if ${ARCH} != "i386" && ${ARCH} != "x86_64"
CFLAGS+=	-fPIC
PLIST_SUB+=	BATTERY="@comment "
.else
GCONF_SCHEMAS+=	battstat.schemas
PLIST_SUB+=	BATTERY=""
.endif

.if ${ARCH} != "i386" && ${ARCH} != "x86_64"
PLIST_SUB+=	CPUFREQ="@comment "
.else
PLIST_SUB+=	CPUFREQ=""
GCONF_SCHEMAS+= cpufreq-applet.schemas
.endif

post-patch:
	@${FIND} ${WRKSRC} -name Makefile.in | ${XARGS} ${REINPLACE_CMD} -e \
	    	's|" == "|" = "|g'
.if !defined(USE_PYTHON)
	@${REINPLACE_CMD} -e 's|HAVE_PYGTK="yes"|HAVE_PYGTK="no"|' \
		${WRKSRC}/configure
.endif

.include <bsd.port.post.mk>
