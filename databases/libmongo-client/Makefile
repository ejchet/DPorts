# Created by: Denis Generalov <gd@rambler-co.ru>
# $FreeBSD: databases/libmongo-client/Makefile 316654 2013-04-27 08:50:46Z mva $

PORTNAME=	libmongo-client
PORTVERSION=	0.1.6.2
CATEGORIES=	databases

MAINTAINER=	gd@rambler-co.ru
COMMENT=	Alternative C driver for MongoDB

LIB_DEPENDS=	pcre:${PORTSDIR}/devel/pcre

USE_GITHUB=	yes
GH_ACCOUNT=	algernon
GH_TAGNAME=	${PORTNAME}-${PORTVERSION}
GH_COMMIT=	13cc0ee

USE_AUTOTOOLS=	automake autoconf libtool
GNU_CONFIGURE=	yes
USES=		pkgconfig gettext iconv
USE_GMAKE=	yes
USE_GNOME=	glib20
USE_LDCONFIG=	yes
CONFIGURE_ENV+=	PKG_CONFIG_DIR=${LOCALBASE}/libdata/pkgconfig

run-autotools:
	@${REINPLACE_CMD} 's|(libdir)/pkgconfig|(prefix)/libdata/pkgconfig|' \
		${WRKSRC}/src/Makefile.am
	@cd ${CONFIGURE_WRKSRC} && \
	${SETENV} ${AUTOTOOLS_ENV} ${AUTORECONF} -i

.include <bsd.port.mk>
