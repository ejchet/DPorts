# Created by: Yinghong Liu <relaxbsd@gmail.com>
# $FreeBSD: ports/devel/alabastra/Makefile,v 1.17 2012/12/08 01:21:47 svnexp Exp $

PORTNAME=	alabastra
PORTVERSION=	0.21b
PORTREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	SF
DISTNAME=	Alabastra-${PORTVERSION}
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	C++ editor written with Qt4

LICENSE=	GPLv2 # (or later)

WRKSRC=		${WRKDIR}/${DISTNAME}

USE_QT4=	gui xml \
		moc_build qmake_build rcc_build uic_build \
		iconengines_run
USE_GMAKE=	yes
ALL_TARGET=	Alabastra
MAKE_JOBS_SAFE=	yes

PLIST_FILES=	bin/alabastra

do-configure:
	@(cd ${BUILD_WRKSRC} && ${SETENV} ${MAKE_ENV} ${QMAKE} ${QMAKEFLAGS})

do-install:
	(cd ${INSTALL_WRKSRC} \
		&& ${INSTALL_PROGRAM} Alabastra ${PREFIX}/bin/alabastra)

.include <bsd.port.mk>
