# Created by: MANTANI Nobutaka <nobutaka@FreeBSD.org>
# $FreeBSD: textproc/uim-m17nlib/Makefile 318178 2013-05-14 16:51:16Z nobutaka $

.if defined(WITHOUT_X11)
PKGNAMESUFFIX=	-m17nlib-nox11
.else
PKGNAMESUFFIX=	-m17nlib
.endif

COMMENT=	Uim plugin using m17n library input method

BUILD_DEPENDS=	m17n-db:${PORTSDIR}/devel/m17n-db
LIB_DEPENDS=	m17n:${PORTSDIR}/devel/m17n-lib \
		uim:${PORTSDIR}/textproc/uim
RUN_DEPENDS=	m17n-db:${PORTSDIR}/devel/m17n-db

.if !defined(WITHOUT_M17NCONTRIB)
RUN_DEPENDS+=	${LOCALBASE}/share/m17n/icons/as-phonetic.png:${PORTSDIR}/textproc/m17n-contrib
.endif

MASTERDIR=	${.CURDIR}/../../textproc/uim
PKGDIR=		${.CURDIR}
CONFIGURE_ARGS=	--with-m17nlib

UIM_SLAVE=	yes

EXTRA_PATCHES=	${PATCHDIR}/extra-patch-uim_Makefile.in

do-build:
	(cd ${WRKSRC}/uim && ${GMAKE} libuim-m17nlib.la)

do-install:
	(cd ${WRKSRC}/uim && \
	${GMAKE} uim_plugin_LTLIBRARIES=libuim-m17nlib.la install-uim_pluginLTLIBRARIES && \
	${MKDIR} ${PREFIX}/share/uim/pixmaps && \
	DESTDIR="" ${SH} ../pixmaps/uim-m17nlib-relink-icons)

post-install:
	${LOCALBASE}/bin/uim-module-manager --register m17nlib
	@${FIND} ${LOCALBASE}/share/m17n/icons/ -name '*.png' -execdir ${ECHO} share/uim/pixmaps/m17n-{} \; >>${TMPPLIST}

.include "${MASTERDIR}/Makefile"
