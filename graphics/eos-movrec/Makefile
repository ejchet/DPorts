# Created by: Alexey Dokuchaev <danfe@FreeBSD.org>
# $FreeBSD: graphics/eos-movrec/Makefile 314960 2013-03-22 20:06:14Z makc $

PORTNAME=	eos-movrec
DISTVERSION=	0.3.1_beta
PORTREVISION=	4
CATEGORIES=	graphics multimedia
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/0.3_beta/ \
		SF/nemysisfreebsdp/:icons
DISTFILES=	${PORTNAME}-${DISTVERSION}-src${EXTRACT_SUFX} \
		${PORTNAME}.png:icons
DIST_SUBDIR=	${PORTNAME}
EXTRACT_ONLY=	${PORTNAME}-${DISTVERSION}-src${EXTRACT_SUFX}

MAINTAINER=	nemysis@gmx.ch
COMMENT=	Capture short movies with Canon DSLR camera

LICENSE=	GPLv2

LIB_DEPENDS=	gphoto2:${PORTSDIR}/graphics/libgphoto2

USE_BZIP2=	yes
USES=		cmake
USE_QT4=	qmake_build moc_build rcc_build uic_build gui

PLIST_FILES=	bin/eos_movrec \
		share/pixmaps/${PORTNAME}.png

DESKTOP_ENTRIES=	"eos_movrec" "EOS Camera Movie Recorder" \
			"${PREFIX}/share/pixmaps/${PORTNAME}.png" \
			"eos_movrec" "Graphics;Photography;Qt;" false

post-patch:
	@${REINPLACE_CMD} -e 's,GLIBC,${OPSYS},' ${WRKSRC}/os_api.h

post-install:
	${INSTALL_DATA} ${_DISTDIR}/${PORTNAME}.png ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
