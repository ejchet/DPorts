# $FreeBSD: games/kajongg/Makefile 315373 2013-03-27 11:55:25Z makc $

PORTNAME=	kajongg
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

CONFLICTS_INSTALL=	kdegames-4.[0-6].*

USES=		cmake:outsource
USE_KDE4=	kdehier kdelibs kdeprefix pykde4 automoc4
USE_QT4=	moc_build qmake_build rcc_build uic_build
USE_PYTHON=	yes
USE_SQLITE=	3
USE_TWISTED_RUN=	yes
USE_XZ=		yes
CMAKE_ARGS=	-DINSTALL_KAJONGG:BOOL=TRUE

.include <${.CURDIR}/../kdegames4/Makefile.common>
.include <bsd.port.mk>
