# $FreeBSD: sysutils/ksysguardd/Makefile 316786 2013-04-29 08:57:12Z bapt $

PORTNAME=	ksysguardd
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	sysutils kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src/
DISTNAME=	kde-workspace-${PORTVERSION}
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE System Guard Daemon

DISTINFO_FILE=	${PORTSDIR}/x11/kde4-workspace/distinfo
USE_XZ=		yes
USE_KDE4=	kdeprefix kdehier
USES=		cmake
CMAKE_ARGS+=	-DBIN_INSTALL_DIR:STRING="${PREFIX}/bin" \
		-DSYSCONF_INSTALL_DIR:STRING="${PREFIX}/etc"
MAKE_JOBS_SAFE=	yes

EXTRACT_AFTER_ARGS=	'${DISTNAME}/ksysguard/${PORTNAME}' \
			'${DISTNAME}/ksysguard/example/${PORTNAME}rc' \
			'${DISTNAME}/ksysguard/gui/SignalIDs.h'

WRKSRC=		${WRKDIR}/${DISTNAME}/ksysguard/${PORTNAME}

PLIST_FILES=	bin/${PORTNAME} \
		etc/${PORTNAME}rc

pre-build:
	${REINPLACE_CMD} -e 's/<config-workspace.h>/"config-${PORTNAME}.h"/' \
		${WRKSRC}/${PORTNAME}.c

.include <bsd.port.mk>
