# New ports collection makefile for:	libconfuse
# Date created:				18 September 2004
# Whom:					Juraj Lutter <otis@sk.freebsd.org>
#
# $FreeBSD: devel/libconfuse/Makefile 316654 2013-04-27 08:50:46Z mva $
#

PORTNAME=	libconfuse
PORTVERSION=	2.7
CATEGORIES=	devel
MASTER_SITES=	SAVANNAH
MASTER_SITE_SUBDIR=	confuse
DISTNAME=	confuse-${PORTVERSION}

MAINTAINER=	otis@freebsd.sk
COMMENT=	Configuration file parsing library

.if defined(WITH_CHECK)
LIB_DEPENDS+=	${LOCALBASE}/lib/libcheck.a:${PORTSDIR}/devel/libcheck
.endif

USES=	iconv pathfix pkgconfig
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes
CONFIGURE_ARGS+=	--disable-nls
CFLAGS+=	-I${WRKSRC}/src
.if defined(WITH_CHECK)
CONFIGURE_ARGS+=	--with-check=${LOCALBASE}
CFLAGS+=	-I${LOCALBASE}/include
.endif

.include <bsd.port.mk>
