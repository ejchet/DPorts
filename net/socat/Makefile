# Created by: ijliao
# $FreeBSD: net/socat/Makefile 324242 2013-08-04 15:57:40Z ehaupt $

PORTNAME=	socat
PORTVERSION=	1.7.2.2
PORTREVISION=	1
CATEGORIES=	net ipv6
MASTER_SITES=	http://www.dest-unreach.org/socat/download/ \
		CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Multipurpose relay and more

LICENSE=	GPLv2

GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_RC_SUBR=	socat
USE_OPENSSL=	yes

PORTSCOUT=	skipv:2.0.0-b2

MAN1=		socat.1
PLIST_FILES=	bin/filan bin/procan bin/socat
PORTDOCS=	EXAMPLES README SECURITY FAQ

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if defined(WITH_OPENSSL_PORT)
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
.endif

CCISCLANG!=	${CC} --version

.if !empty(CCISCLANG:M*clang*)
CFLAGS+=	-Wno-unused-comparison
.endif

do-install:
.for f in filan procan socat
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${PREFIX}/bin
.endfor
	${INSTALL_MAN} ${WRKSRC}/doc/${MAN1} ${MAN1PREFIX}/man/man1
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

.if ${ARCH} == "arm"
BROKEN=		Does not configure on arm
.endif

.include <bsd.port.mk>
