# Created by: Daniel Roethlisberger <daniel@roe.ch>
# $FreeBSD: math/msieve/Makefile 313321 2013-03-03 02:09:06Z bf $

PORTNAME=	msieve
PORTVERSION=	1.51
CATEGORIES=	math
MASTER_SITES=	SF
MASTER_SITE_SUBDIR=	\
	${PORTNAME}/${PORTNAME}/${PORTNAME:C/^m/M/}%20v${PORTVERSION}
DISTNAME=	${PORTNAME}${PORTVERSION:S/.//}

MAINTAINER=	bf@FreeBSD.org
COMMENT=	Fast factorization of big integers using MPQS and GNFS

BUILD_DEPENDS=	${LOCALBASE}/lib/libecm.a:${PORTSDIR}/math/gmp-ecm

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}
USE_GMAKE=	yes
MAKE_ENV=	ECM=1

HEADERS=	mp.h msieve.h util.h
PLIST_FILES=	bin/msieve lib/libmsieve.a ${HEADERS:S|^|include/msieve/|}
PLIST_DIRS=	include/msieve
PORTDOCS=	Changes Readme Readme.nfs Readme.qs

OPTIONS_DEFINE=		OPTIMIZED_CFLAGS
OPTIONS_DEFAULT=	OPTIMIZED_CFLAGS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MOPTIMIZED_CFLAGS}
CFLAGS+=	-O3 -ffast-math
.if defined(WITHOUT_DEBUG) || !defined(WITH_DEBUG)
CFLAGS+=	-fomit-frame-pointer -DNDEBUG
.endif
.endif

.if ${MACHINE_CPU:Mathlon}
CFLAGS+=	-DHAS_AMD_MMX
.endif

.if ${MACHINE_CPU:Msse}
CFLAGS+=	-DHAS_SSE
.endif

.if ${MACHINE_CPU:Msse2}
CFLAGS+=	-DHAS_SSE2
.endif

.if ${OSVERSION} >= 700042 && ${ARCH} == "sparc64"
BROKEN=		Does not compile on sparc64
.endif

post-patch:
	@${REINPLACE_CMD} -E \
		-e '/(^(CC|OPT_FLAGS) =|-DNDEBUG|svnversion|-ldl)/d' \
		-e '/^CFLAGS =/s/=/+=/' \
		-e 's@-Ignfs/poly/stage1@& -I${LOCALBASE}/include@' \
		-e 's@-lecm@-L${LOCALBASE}/lib &@' \
		-e 's/-lpthread/-pthread/' \
		-e 's/-DHAS_SSE2//' \
		${WRKSRC}/Makefile

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/msieve ${PREFIX}/bin
	@${MKDIR} ${PREFIX}/include/msieve
	@cd ${WRKSRC}/include; ${INSTALL_DATA} ${HEADERS} ${PREFIX}/include/msieve
	@${INSTALL_LIB} ${WRKSRC}/libmsieve.a ${PREFIX}/lib
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@cd ${WRKSRC}; ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

regression-test test check: build
	@cd ${WRKSRC}; \
	./msieve -q -d 1 2385734365243128176756453434347656453122245767798

.include <bsd.port.mk>
