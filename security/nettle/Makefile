# Created by: ijliao
# $FreeBSD: security/nettle/Makefile 320833 2013-06-13 19:51:53Z johans $

PORTNAME=	nettle
PORTVERSION=	2.7.1
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GNU} \
		http://www.lysator.liu.se/~nisse/archive/:liu \
		ftp://ftp.lysator.liu.se/pub/security/lsh/:liu
MASTER_SITE_SUBDIR=	${PORTNAME}/:DEFAULT

MAINTAINER=	johans@FreeBSD.org
COMMENT=	Low-level cryptographic library

LICENSE=	LGPL21
LICENSE_FILE=	${WRKSRC}/COPYING.LIB

LIB_DEPENDS=	gmp:${PORTSDIR}/math/gmp

USE_GMAKE=	yes
USE_OPENSSL=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV+=	M4="/usr/bin/m4 -g"
CONFIGURE_ARGS=	--enable-shared
MAKE_ARGS=	pkgconfigdir="${PREFIX}/libdata/pkgconfig"

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
USE_LDCONFIG=	yes

PORTDOCS=	NEWS README TODO nettle.html nettle.pdf
PORTEXAMPLES=	*.c *.h
INFO=		nettle

.include <bsd.port.pre.mk>

.if ${ARCH} == "sparc64"
CONFIGURE_ENV+=	CCPIC=-fPIC
.endif

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${EXAMPLESDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} examples/${PORTEXAMPLES} ${EXAMPLESDIR}
.endif
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.post.mk>
