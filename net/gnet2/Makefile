# New ports collection makefile for:   gnet2
# Date created:        15 February 2003
# Whom:                Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: net/gnet2/Makefile 316355 2013-04-23 14:20:25Z bapt $
#

PORTNAME=	gnet
PORTVERSION=	2.0.8
PORTREVISION=	1
CATEGORIES=	net ipv6
MASTER_SITES=	GNOME
PKGNAMESUFFIX=	2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A simple network library built upon Glib-2

USES=		pkgconfig
USE_AUTOTOOLS=	libtool
USE_GNOME=	gnomehack glib20
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes

.if !defined(NOPORTDOCS)
CONFIGURE_ARGS+=	--with-html-dir=${DOCSDIR}
.else
CONFIGURE_ARGS+=	--without-html-dir
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|GNET_INTERFACE_AGE=0|GNET_INTERFACE_AGE=8|g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
