# Created by: Yinghong.Liu <relaxbsd@gmail.com>
# $FreeBSD: finance/eqonomize-kde4/Makefile 316654 2013-04-27 08:50:46Z mva $

PORTNAME=	eqonomize
PORTVERSION=	0.6
PORTREVISION=	8
CATEGORIES=	finance
MASTER_SITES=	SF/${PORTNAME}/Eqonomize%21/${PORTVERSION}
PKGNAMESUFFIX=	-kde4

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A personal accounting software

USE_KDE4=	kdelibs kdeprefix kdehier automoc4
USE_QT4=	corelib dbus gui network svg xml qmake_build moc_build uic_build rcc_build
USES=		cmake gettext iconv
INSTALLS_ICONS=	yes

DATADIR=	${PREFIX}/share/apps/${PORTNAME}
DOCSDIR=	${PREFIX}/share/doc

post-patch:
#Fix build with kdelibs>=4.5.0
	${REINPLACE_CMD} -e 's,V4.1.2-Based,V4.2-Based,g' \
		${WRKSRC}/doc/*/index.docbook

.include <bsd.port.mk>
