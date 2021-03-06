# Created by: Yuan Jue <yuanjue@yuanjue.net>
# $FreeBSD: devel/kdesvn-kde4/Makefile 323850 2013-07-28 20:28:32Z dbn $

PORTNAME=	kdesvn
DISTVERSION=	1.6.0
PORTREVISION=	1
CATEGORIES=	devel kde
MASTER_SITES=	http://kdesvn.alwins-world.de/downloads/

MAINTAINER=	dbn@FreeBSD.org
COMMENT=	KDE frontend for Subversion

LIB_DEPENDS=	svn_client-1:${PORTSDIR}/devel/subversion

LICENSE=	GPLv2

CONFLICTS=	qsvn-[0-9]*

USE_BZIP2=	yes
USES=		cmake
CMAKE_ARGS+=	-DSUBVERSION_INCLUDE_DIR=${LOCALBASE}/include/subversion-1
USE_KDE4=	kdelibs kdeprefix automoc4
USE_LDCONFIG=	yes
USE_QT4=	corelib gui xml network dbus svg qt3support sql \
		qmake_build moc_build rcc_build uic_build linguist_build

MAN1=		kdesvn.1 kdesvnaskpass.1

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=	gettext
PLIST_SUB+=	NLS=""
.else
PLIST_SUB+=	NLS="@comment "
.endif

post-patch:
	${RM} ${WRKSRC}/src/kiosvn/svn*.protocol
.if empty(PORT_OPTIONS:MDOCS)
	${ECHO} "ADD_SUBDIRECTORY(man)" > ${WRKSRC}/doc/CMakeLists.txt
.endif
.if empty(PORT_OPTIONS:MNLS)
	${REINPLACE_CMD} -e 's,ADD_SUBDIRECTORY(po), ,g' \
		${WRKSRC}/CMakeLists.txt
.endif

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
