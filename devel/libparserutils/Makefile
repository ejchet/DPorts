# Created by: David Romano <unobe@cpan.org>
# $FreeBSD: devel/libparserutils/Makefile 319339 2013-05-29 04:46:28Z jgh $

PORTNAME=	libparserutils
PORTVERSION=	0.1.1
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://www.netsurf-browser.org/projects/releases/
DISTNAME=	${PORTNAME}-${PORTVERSION}-src

MAINTAINER=	unobe@cpan.org
COMMENT=	Library useful when writing parsers (formerly a part of NetSurf)

USE_GMAKE=	yes

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

OPTIONS_DEFINE=	ICONV STATIC TEST DOXYGEN
OPTIONS_DEFAULT=	ICONV STATIC TEST DOXYGEN

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MICONV}
CFLAGS+=	-DWITH_ICONV_FILTER
LDFLAGS+=	-liconv
.endif

.if ${PORT_OPTIONS:MSTATIC}
PLIST_SUB+=	NO_STATIC="@comment " STATIC=""
.else
USE_PERL5_BUILD=yes
USE_LDCONFIG=	yes
COMPONENT_TYPE=	lib-shared
MAKE_ENV+=	COMPONENT_TYPE=${COMPONENT_TYPE}
PLIST_SUB+=	NO_STATIC="" STATIC="@comment "
.endif

.if ${PORT_OPTIONS:MTEST}
USE_PERL5_BUILD=yes
ALL_TARGET+=	test
.endif

.if ${PORT_OPTIONS:MDOXYGEN}
DOXYGEN_PORTDIR=${PORTSDIR}/devel/doxygen
BUILD_DEPENDS+=	doxygen:${DOXYGEN_PORTDIR}:build
PATH:=${PATH}:`cd ${DOXYGEN_PORTDIR}; make -V WRKSRC`/bin
ALL_TARGET+=	docs
MAKE_ENV+=	PATH=${PATH}
.endif

.include <bsd.port.mk>
