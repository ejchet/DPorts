# Created by: spn
# $FreeBSD: x11-wm/fluxbox/Makefile 321627 2013-06-23 11:47:09Z beat $

PORTNAME=	fluxbox
PORTVERSION=	1.3.5
CATEGORIES=	x11-wm
MASTER_SITES=	SF
DISTFILES=	${PORTNAME}-${PORTVERSION}${EXTRACT_SUFX}
EXTRACT_ONLY=	${PORTNAME}-${PORTVERSION}${EXTRACT_SUFX}

MAINTAINER=	beat@FreeBSD.org
COMMENT=	Small and fast window manager based on BlackBox

LICENSE=	MIT

RUN_DEPENDS=	xmessage:${PORTSDIR}/x11/xmessage

USE_XORG=	xextproto xft xpm xrandr
USE_GMAKE=	yes
WANT_GNOME=	yes
GNU_CONFIGURE=	yes

PORTDOCS=		AUTHORS ChangeLog NEWS README TODO
MAN1=		fbrun.1 fbsetbg.1 fbsetroot.1 fluxbox.1 \
		startfluxbox.1 fluxbox-remote.1
MAN5=		fluxbox-apps.5 fluxbox-keys.5 fluxbox-menu.5 \
		fluxbox-style.5
DOCSVERSION=	20060629

OPTIONS_DEFINE=	DOCS DOCHTML PDFDOCS DEBUG GNOME IMLIB2 XINERAMA \
		XRENDER NLS SLIT SYSTRAY REMEMBER TOOLBAR
OPTIONS_DEFAULT=	XRENDER SLIT SYSTRAY REMEMBER TOOLBAR
DOCHTML_DESC=	Install html documentation
PDFDOCS_DESC=	Build and install PDF documentation
REMEMBER_DESC=	Enable remember feature
SLIT_DESC=	Enable slit feature
SYSTRAY_DESC=	Enable systray feature
TOOLBAR_DESC=	Enable toolbar feature
XRENDER_DESC=	Enable xrender support

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDEBUG}
CONFIGURE_ARGS+=	--enable-debug
.endif

.if ${PORT_OPTIONS:MDOCHTML}
# http://fluxbox.org/docbook/en/tarballs/
MASTER_SITES+=		${MASTER_SITE_LOCAL:S,%SUBDIR%,mezz,}:html \
			http://people.freebsd.org/~mezz/distfiles/:html
DISTFILES+=		fb-doc-mfhtml-${DOCSVERSION}.tgz:html
EXTRACT_ONLY+=		fb-doc-mfhtml-${DOCSVERSION}.tgz
PLIST_SUB+=		DOCHTML=""
.else
PLIST_SUB+=		DOCHTML="@comment "
.endif

.if ${PORT_OPTIONS:MPDFDOCS}
# http://fluxbox.org/docbook/en/pdf/
MASTER_SITES+=		${MASTER_SITE_LOCAL:S,%SUBDIR%,mezz,}:pdf \
			http://people.freebsd.org/~mezz/distfiles/:pdf
DISTFILES+=		fluxbook-${DOCSVERSION}.pdf:pdf
PLIST_SUB+=		DOCPDF=""
.else
PLIST_SUB+=		DOCPDF="@comment "
.endif

.if ${PORT_OPTIONS:MIMLIB2}
USE_EFL+=		imlib2
CONFIGURE_ARGS+=	--enable-imlib2
.else
CONFIGURE_ARGS+=	--disable-imlib2
.endif

.if ${PORT_OPTIONS:MXINERAMA} || defined(PACKAGE_BUILDING)
USE_XORG+=		xinerama
CONFIGURE_ARGS+=	--enable-xinerama
.endif

.if ${PORT_OPTIONS:MNLS}
USES+=			iconv
CONFIGURE_ENV=		LIBS="-L${LOCALBASE}/lib -liconv"
CPPFLAGS+=		-I${LOCALBASE}/include
CONFIGURE_ARGS+=	--enable-nls
PLIST_SUB+=		NLS=""
.else
CONFIGURE_ENV=		LIBS="-L${LOCALBASE}/lib"
CPPFLAGS+=		-I${LOCALBASE}/include
CONFIGURE_ARGS+=	--disable-nls
PLIST_SUB+=		NLS="@comment "
.endif

.if ${PORT_OPTIONS:MREMEMBER}
CONFIGURE_ARGS+=	--enable-remember
.else
CONFIGURE_ARGS+=	--disable-remember
.endif

.if ${PORT_OPTIONS:MSLIT}
CONFIGURE_ARGS+=	--enable-slit
.else
CONFIGURE_ARGS+=	--disable-slit
.endif

.if ${PORT_OPTIONS:MSYSTRAY}
CONFIGURE_ARGS+=	--enable-systray
.else
CONFIGURE_ARGS+=	--disable-systray
.endif

.if ${PORT_OPTIONS:MTOOLBAR}
CONFIGURE_ARGS+=	--enable-toolbar
.else
CONFIGURE_ARGS+=	--disable-toolbar
.endif

.if ${PORT_OPTIONS:MXRENDER}
USE_XORG+=		xrender
CONFIGURE_ARGS+=	--enable-xrender
.else
CONFIGURE_ARGS+=	--disable-xrender
.endif

.include <bsd.port.pre.mk>

.if ${HAVE_GNOME:Mlibgnome}!="" || defined(PACKAGE_BUILDING)
CONFIGURE_ARGS+=	--enable-gnome
.else
CONFIGURE_ARGS+=	--disable-gnome
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
		${WRKSRC}/util/fluxbox-generate_menu.in ${WRKSRC}/util/fbsetbg

.if ! ${PORT_OPTIONS:MNLS}
	@${REINPLACE_CMD} -e 's|HAVE_ICONV=yes|HAVE_ICONV=no|g' \
		${WRKSRC}/configure
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
.endif

.if ${PORT_OPTIONS:MPDFDOCS}
	@${MKDIR} ${DOCSDIR}/pdf
	${INSTALL_DATA} ${DISTDIR}/fluxbook-${DOCSVERSION}.pdf \
		${DOCSDIR}/pdf/
.endif

.if ${PORT_OPTIONS:MDOCHTML}
	@${MKDIR} ${DOCSDIR}/html
. for h in *.css *.html
	(cd ${WRKDIR}/html && ${INSTALL_DATA} ${h} ${DOCSDIR}/html)
. endfor
.endif

.include <bsd.port.post.mk>
