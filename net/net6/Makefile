# Created by: Andreas Kohn <andreas@syndrom23.de>
# $FreeBSD: net/net6/Makefile 317503 2013-05-06 10:22:41Z bapt $

PORTNAME=	net6
PORTVERSION=	1.3.14
PORTREVISION=	1
CATEGORIES=	net devel
MASTER_SITES=	http://releases.0x539.de/net6/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Network access framework for IPv4/IPv6

LICENSE=	GPLv2

LIB_DEPENDS=	sigc-2.0.0:${PORTSDIR}/devel/libsigc++20 \
		gnutls.26:${PORTSDIR}/security/gnutls

USES=	pathfix pkgconfig
USE_AUTOTOOLS=	libtool
MAKE_JOBS_SAFE=	yes
USE_LDCONFIG=	yes

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.include <bsd.port.mk>
