# Created by: ports@FreeBSD.org
# $FreeBSD: graphics/libexif-gtk/Makefile 316596 2013-04-26 10:44:28Z ak $

PORTNAME=	libexif-gtk
PORTVERSION=	0.4.0
PORTREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	SF/libexif/${PORTNAME}/${PORTVERSION}

MAINTAINER=	marius@nuenneri.ch
COMMENT=	GTK+ widgets to display/edit EXIF tags

LICENSE=	LGPL21

LIB_DEPENDS=	exif:${PORTSDIR}/graphics/libexif

USES=		pathfix
USE_GNOME=	gtk20
USE_AUTOTOOLS=	autoconf libtool
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
USE_LDCONFIG=	yes

PORTDOCS=	AUTHORS ChangeLog NEWS README

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=	--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

post-patch:
	@${REINPLACE_CMD} 's|-g ||g' ${WRKSRC}/configure.ac

post-install:
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
.endif

.include <bsd.port.mk>
