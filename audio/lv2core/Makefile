# Created by: xaimus <xaimus@gmail.com>
# $FreeBSD: audio/lv2core/Makefile 317320 2013-05-04 14:06:08Z bdrewery $

PORTNAME=	lv2core
PORTVERSION=	6.0
CATEGORIES=	audio
MASTER_SITES=	http://lv2plug.in/spec/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	LV2 Core Package

LICENSE=	BSD
LICENSE_FILE=	${WRKSRC}/COPYING

USES=		pkgconfig
USE_BZIP2=	yes
USE_PYTHON_BUILD=	yes
MAKE_JOBS_SAFE=	yes

.include <bsd.port.pre.mk>

.if defined(BATCH) || defined(PACKAGE_BUILDING)
WAF_VERBOSE=	--verbose
.endif

WAF_JOBS=	--jobs=${MAKE_JOBS_NUMBER}

post-patch:
	@${REINPLACE_CMD} -e '/autowaf.build_pc/s|^|#|' ${WRKSRC}/wscript
	@(cd ${WRKSRC} && ${SED} -e \
		's|@PREFIX@|${PREFIX}| ; \
		 s|@EXEC_PREFIX@|${PREFIX}| ; \
		 s|@LIBDIR@|${PREFIX}/lib| ; \
		 s|@INCLUDEDIR@|${PREFIX}/include| ; \
		 s|@LV2CORE_VERSION@|${PORTVERSION}|' < lv2core.pc.in > lv2core.pc)

do-configure:
	@(cd ${WRKSRC} && ./waf ${WAF_VERBOSE} --prefix=${PREFIX} configure)

do-build:
	@(cd ${WRKSRC} && ./waf ${WAF_VERBOSE} ${WAF_JOBS} build)

do-install:
	@(cd ${WRKSRC} && ./waf ${WAF_VERBOSE} install)
	${INSTALL_DATA} ${WRKSRC}/lv2core.pc ${PREFIX}/libdata/pkgconfig

.include <bsd.port.post.mk>
