# $FreeBSD: net-p2p/transmission-qt4/Makefile 313230 2013-03-02 13:48:31Z crees $

PORTREVISION=	0
PKGNAMESUFFIX=	-qt4

MAINTAINER=	crees@FreeBSD.org
COMMENT=	Fast and lightweight QT4 BitTorrent client

LIB_DEPENDS=	${GEN_LIB_DEPENDS}
RUN_DEPENDS=	${GEN_RUN_DEPENDS}

DESCR=		${.CURDIR}/pkg-descr
MASTERDIR=	${.CURDIR}/../transmission-cli
PLIST=		${.CURDIR}/pkg-plist
SLAVEPORT=	qt4

QT_NONSTANDARD=	yes
USE_QT4=	moc_build qmake_build rcc_build uic_build gui dbus network
USE_GNOME=	desktopfileutils

QMAKEFLAGS+=	QMAKE_LFLAGS="-lcrypto -L${LOCALBASE}/lib -liconv"

EXTRA_CONF_ARGS=--disable-cli \
		--disable-daemon \
		--without-gtk \
		--disable-mac \
		--disable-nls

MAN1=		transmission-qt.1

post-patch: general-patch
	@${REINPLACE_CMD} -e 's|/share/man|/man|g ; /PKGCONFIG/s| openssl||g' \
		${WRKSRC}/qt/qtr.pro

post-build:
	@(cd ${WRKSRC}/qt ; ${QMAKE} ${QMAKEFLAGS} qtr.pro ; ${GMAKE})

do-install:
	@(cd ${WRKSRC}/qt ; ${SETENV} INSTALL_ROOT=${PREFIX} ${MAKE} install)

post-install: general-install
.ifndef (NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/qt/README.txt ${DOCSDIR}/README-qt4
.endif
	@${MKDIR} ${PREFIX}/share/applications
	@${INSTALL_DATA} ${WRKSRC}/qt/transmission-qt.desktop \
		${PREFIX}/share/applications/
	@${MKDIR} ${PREFIX}/share/pixmaps
	@${INSTALL_DATA} ${WRKSRC}/qt/icons/transmission.png \
		${PREFIX}/share/pixmaps/transmission-qt.png
	@-update-desktop-database

.include "${MASTERDIR}/Makefile"
