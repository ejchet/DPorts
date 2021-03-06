# Created by: Matt Lancereau
# $FreeBSD: x11/xfce4-terminal/Makefile 317678 2013-05-08 15:31:34Z olivierd $

PORTNAME=	xfce4-terminal
PORTVERSION=	0.6.2
CATEGORIES=	x11 xfce
MASTER_SITES=	${MASTER_SITE_XFCE}
MASTER_SITE_SUBDIR=	src/apps/${PORTNAME}/${PORTVERSION:R}
DIST_SUBDIR=	xfce4

MAINTAINER=	xfce@FreeBSD.org
COMMENT=	Terminal emulator for the X windowing system

USE_AUTOTOOLS=	libtool
GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GNOME=	gtk20 glib20 intltool intlhack vte libxml2 
USE_XFCE=	configenv libmenu
USE_XORG=	x11
USES=		pathfix pkgconfig

CONFIGURE_ARGS=	--without-gnome-default-appsdir

OPTIONS_DEFINE=	NLS

MAN1=		xfce4-terminal.1
MANLANG=	"" ar ca da de el es fr gl id it ja ko lt \
	pl pt pt_BR ru sr sv tr ug uk zh_CN

.include  <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
CONFIGURE_ARGS+=--enable-nls
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

post-patch:
# Downgrade VTE to 0.26
	@${REINPLACE_CMD} -e 's|0.28|0.26|g' ${WRKSRC}/configure
.if ! ${PORT_OPTIONS:MNLS}
	@${REINPLACE_CMD} -e 's|	terminal||; \
		s|po \\|terminal|' ${WRKSRC}/Makefile.in
.endif

.include <bsd.port.mk>
