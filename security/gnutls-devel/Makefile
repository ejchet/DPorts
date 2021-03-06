# New ports collection makefile for:	gnutls-devel
# Date created:				8 Jan 2009
# Whom:					Roman Bogorodskiy <novel@FreeBSD.org>
#
# $FreeBSD: security/gnutls-devel/Makefile 317496 2013-05-06 09:39:25Z bapt $
#

PORTNAME=	gnutls
PORTVERSION=	2.99.4
PORTREVISION=	1
CATEGORIES=	security net
MASTER_SITES=	http://alpha.gnu.org/gnu/gnutls/ \
		ftp://ftp.gnutls.org/pub/gnutls/devel/
PKGNAMESUFFIX=	-devel

MAINTAINER=	novel@FreeBSD.org
COMMENT=	GNU Transport Layer Security library

LIB_DEPENDS=	gpg-error.0:${PORTSDIR}/security/libgpg-error \
		nettle.4:${PORTSDIR}/security/nettle \
		p11-kit.0:${PORTSDIR}/security/p11-kit

CONFLICTS=	gnutls-[0-9]*

USE_XZ=		yes
USES=		iconv
USE_GNOME=	pkgconfig ltverhack
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USE_AUTOTOOLS=	libtool
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CPPFLAGS+=	-fPIC
CONFIGURE_ARGS+=	--disable-guile --disable-silent-rules \
			--disable-hardware-acceleration
MANCOMPRESSED=	no

.include <bsd.port.options.mk>

.if (defined(WITH_LIBTASN1) || exists(${LOCALBASE}/lib/libtasn1.so.5)) && !defined(WITHOUT_LIBTASN1)
LIB_DEPENDS+=	tasn1.5:${PORTSDIR}/security/libtasn1
.else
CONFIGURE_ARGS+=	--with-included-libtasn1
.endif

.if defined(WITHOUT_CXX)
CONFIGURE_ARGS+=	--disable-cxx
PLIST_SUB+=		CXX="@comment "
.else
PLIST_SUB+=		CXX=""
.endif

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=		NLS=""
.else
CONFIGURE_ARGS+=	--disable-nls
PLIST_SUB+=		NLS="@comment "
.endif

.if ${PORT_OPTIONS:MDOCS}
PORTDOCS=		AUTHORS NEWS README THANKS
.endif
EXAMPLES=	doc/examples/*.c

pre-configure:
	@${REINPLACE_CMD} -e 's,(libdir)/pkgconfig,(prefix)/libdata/pkgconfig,' \
		${WRKSRC}/lib/Makefile.in ${WRKSRC}/libextra/Makefile.in
	@${REINPLACE_CMD} -e 's,(top_builddir)$$,(top_builddir) -I$$(top_builddir)/lib/includes -I$$(top_builddir)/libextra/includes,' \
		${WRKSRC}/doc/Makefile.in

post-install:
	@${MKDIR} ${EXAMPLESDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${EXAMPLES} ${EXAMPLESDIR}
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for i in ${PORTDOCS}
	@${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif

.include "Makefile.man"
.include <bsd.port.mk>
