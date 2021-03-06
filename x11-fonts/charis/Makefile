# Created by: bf <bf@FreeBSD.org>
# $FreeBSD: x11-fonts/charis/Makefile 324287 2013-08-05 20:56:17Z bf $

PORTNAME=	CharisSIL
PORTVERSION=	4.114
CATEGORIES=	x11-fonts
MASTER_SITES=	http://scripts.sil.org/cms/scripts/render_download.php?&format=file&media_id=${MEDIA_ID}&filename=/ \
		LOCAL/bf
MASTER_SITE_SUBDIR=	#prevent bsd.xorg.mk from setting a default subdirectory

MAINTAINER=	bf@FreeBSD.org
COMMENT=	Charis SIL TrueType font collection

LICENSE=	OFL
LICENSE_NAME=	SIL Open Font License (OFL)
LICENSE_FILE=	${WRKSRC}/OFL.txt
LICENSE_PERMS=	auto-accept

USE_ZIP=	yes
XORG_CAT=	font

FONTROOTDIR=	${PREFIX}/lib/X11/fonts
INSTALLS_TTF=	yes
MEDIA_ID=	${DISTNAME}${EXTRACT_SUFX}
NO_BUILD=	yes
USE_TGZ=	yes	#prevent bsd.xorg.mk from setting USE_BZIP

.for type in B BI I R
PLIST_FILES+=	${FONTROOTDIR:S/${PREFIX}\///}/${FONTDIR}/${PORTNAME}-${type}.ttf
.endfor

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
PORTDOCS=	FONTLOG.txt OFL-FAQ.txt OFL.txt README.txt
.endif

SUB_LIST=	DIR="${FONTROOTDIR}/${FONTDIR}"
SUB_FILES=	pkg-message

do-configure:
	@${DO_NADA}

do-install:
	@${MKDIR} ${FONTROOTDIR}/${FONTDIR}
	@(cd ${WRKSRC} ; ${INSTALL_DATA} *.ttf ${FONTROOTDIR}/${FONTDIR})
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@(cd ${WRKSRC} ; ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR})
.endif
	@${ECHO_MSG}
	@${CAT} ${PKGMESSAGE}
	@${ECHO_MSG}

.include <bsd.port.mk>
