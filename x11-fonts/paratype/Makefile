# New ports collection makefile for:	paratype-fonts
# Date created:				05 March 2011
# Whom:					Alexey Illarionov <littlesavage@rambler.ru>
#
# $FreeBSD: ports/x11-fonts/paratype/Makefile,v 1.8 2012/11/17 06:03:29 svnexp Exp $
#

PORTNAME=	paratype
PORTVERSION=	2.004
PORTREVISION=	4
CATEGORIES=	x11-fonts
MASTER_SITES=	http://paratype.0xdc.ru/
MASTER_SITE_SUBDIR=	#prevent bsd.xorg.mk from setting a default subdirectory
DISTFILES=	PTSansOFL-2.004.zip PTSerifOFL-1.000.zip PTMonoOFL-1.002_1.zip

MAINTAINER=	littlesavage@rambler.ru
COMMENT=	ParaType font collection for the languages of Russia

LICENSE=	OFL
LICENSE_NAME=	SIL Open Font License (OFL)
LICENSE_FILE=	${WRKSRC}/PTSSM_OFL.txt
LICENSE_PERMS=	auto-accept

INSTALLS_TTF=	yes
NO_BUILD=	yes
NO_WRKSUBDIR=	yes
USE_TGZ=	yes
USE_ZIP=	yes
XORG_CAT=	font

FONTDIR=	ParaType
FONTROOTDIR=	${PREFIX}/lib/X11/fonts
PLIST_SUB=	FONTDIR="${FONTROOTDIR:S/${PREFIX}\///}/${FONTDIR}"
SUB_FILES=	pkg-message
SUB_LIST=	FONTDIR="${FONTROOTDIR:S/${PREFIX}\///}/${FONTDIR}"

do-configure:
	@${DO_NADA}

do-install:
	@${MKDIR} ${FONTROOTDIR}/${FONTDIR}
	@${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTROOTDIR}/${FONTDIR}/
	@${ECHO_MSG}
	@${CAT} ${PKGMESSAGE}
	@${ECHO_MSG}

.include <bsd.port.mk>
