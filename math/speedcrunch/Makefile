# Created by: Yinghong.Liu <relaxbsd@gmail.com>
# $FreeBSD: math/speedcrunch/Makefile 317947 2013-05-12 11:48:49Z makc $

PORTNAME=	speedcrunch
DISTVERSION=	0.10.1
PORTREVISION=	2
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	makc@FreeBSD.org
COMMENT=	A desktop calculator for power users

USE_QT4=	qmake_build moc_build rcc_build uic_build gui xml
USES=		cmake
CMAKE_SOURCE_PATH=	src

MAKE_JOBS_SAFE=	yes

LRELEASE_CMD=	${LOCALBASE}/bin/lrelease-qt4
LRELEASE_ARGS=	-compress -silent

OPTIONS_DEFINE=	NLS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USE_QT4+=	linguist
PLIST_SUB+=	NLS=""
.else
PLIST_SUB+=	NLS="@comment "
.endif

pre-configure:
.if ${PORT_OPTIONS:MNLS}
	cd ${WRKSRC}/src/i18n && ${LRELEASE_CMD} ${LRELEASE_ARGS} *.ts
.else
	${REINPLACE_CMD} -e '/speedcrunch_TRANSLATIONS/d' ${WRKSRC}/src/CMakeLists.txt
.endif
	${REINPLACE_CMD} -e 's,%%PREFIX%%,${PREFIX},g' ${WRKSRC}/src/gui/mainwindow.cpp

.include <bsd.port.mk>
