# $FreeBSD: ports/misc/saaghar/Makefile,v 1.2 2013/02/26 15:53:36 svnexp Exp $

PORTNAME=	saaghar
PORTVERSION=	1.0.94
PORTREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	SF/saaghar/Source%20Code/:saaghar \
		SF/ganjoor/s3db:ganjoor
DISTFILES=	Saaghar-${PORTVERSION}.tar.gz:saaghar	\
		ganjoor-s3db-910612.zip:ganjoor
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	javad.kouhi@gmail.com
COMMENT=	Persian poetry software

LICENSE=	GPLv3

EXTRACT_DEPENDS=	${LOCALBASE}/bin/unzip:${PORTSDIR}/archivers/unzip

USE_QT4=	gui network sql xml sql-sqlite3_run \
		moc_build qmake_build rcc_build uic_build
HAS_CONFIGURE=	yes
QMAKEFLAGS+=	PREFIX=${PREFIX}
WRKSRC=		${WRKDIR}/Saaghar

.include <bsd.port.options.mk>

.if !${PORT_OPTIONS:MDEBUG}
QMAKEFLAGS+=	-config release
.endif

post-extract:
	${UNZIP_CMD} -d ${WRKDIR}/ganjoor \
		${DISTDIR}/${DIST_SUBDIR}/ganjoor-s3db-910612.zip

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/share/saaghar|${PREFIX}/share/saaghar|g' \
		${WRKSRC}/mainwindow.cpp \
		${WRKSRC}/main.cpp
	@${REINPLACE_CMD} -e '1 s|^.*/|/|g' \
		${WRKSRC}/QGanjoorDbBrowser.cpp \
		${WRKSRC}/QGanjoorDbStuff.h \
		${WRKSRC}/mainwindow.cpp

do-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} \
	${QMAKE} ${QMAKEFLAGS} saaghar.pro

post-install:
	cd ${WRKDIR}/ganjoor && ${COPYTREE_SHARE} .  ${DATADIR}

.include <bsd.port.mk>
