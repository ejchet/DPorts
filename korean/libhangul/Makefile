# Created by: Hyogeol, Lee <hyogeollee@gmail.com>
# $FreeBSD: korean/libhangul/Makefile 321708 2013-06-24 19:05:53Z jkim $

PORTNAME=	libhangul
PORTVERSION=	0.1.0
CATEGORIES=	korean
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	jkim@FreeBSD.org
COMMENT=	Library for Hangul processing

LICENSE=	LGPL21

GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USES=		iconv pkgconfig

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
CONFIGURE_ARGS=	--enable-nls
PLIST_SUB=	NLS=""
.else
CONFIGURE_ARGS=	--disable-nls
PLIST_SUB=	NLS="@comment "
.endif

.if exists(${LOCALBASE}/libdata/pkgconfig/check.pc)
test:	build
	@( cd ${WRKSRC}/test && ${SETENV} ${MAKE_ENV} ${GMAKE} )
	@( cd ${WRKSRC}/test && ${SETENV} ${MAKE_ENV} ${GMAKE} test && ./test )
.endif

.include <bsd.port.mk>
