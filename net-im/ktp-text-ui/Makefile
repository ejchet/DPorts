# $FreeBSD: net-im/ktp-text-ui/Makefile 317154 2013-05-02 21:42:57Z avilla $

PORTNAME=	ktp-text-ui
PORTVERSION=	${KTP_VERSION}
CATEGORIES=	net-im kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KTP_BRANCH}/kde-telepathy/${PORTVERSION}/src

MAINTAINER=	avilla@FreeBSD.org
COMMENT=	KDE chat window application

LIB_DEPENDS=	telepathy-qt4:${PORTSDIR}/net-im/telepathy-qt4 \
		telepathy-logger-qt4:${PORTSDIR}/net-im/telepathy-logger-qt4 \
		ktpcommoninternalsprivate:${PORTSDIR}/net-im/ktp-common-internals
RUN_DEPENDS=	${KDE4_PREFIX}/bin/ktp-contactlist:${PORTSDIR}/net-im/ktp-contact-list

USE_KDE4=	kdehier kdeprefix kdelibs automoc4
#USE_KDE4+=	kdepimlibs
USE_QT4=	corelib webkit xml \
		moc_build qmake_build rcc_build uic_build
USES=		cmake gettext
USE_BZIP2=	yes
MAKE_JOBS_SAFE=	yes
USE_LDCONFIG=	yes

.include <bsd.port.mk>
