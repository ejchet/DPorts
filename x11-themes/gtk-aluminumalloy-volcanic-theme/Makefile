# New ports collection makefile for:	AluminumAlloy-Volcanic (gtk theme and master port)
# Date Created:				27 August 2004
# Whom:					Alexey Dokuchaev <danfe@FreeBSD.org>
#
# $FreeBSD: ports/x11-themes/gtk-aluminumalloy-volcanic-theme/Makefile,v 1.12 2012/11/17 06:03:31 svnexp Exp $
#

PORTNAME=	aluminumalloy
PORTVERSION?=	2004.01.04
PORTREVISION?=	7
CATEGORIES=	x11-themes gnome
MASTER_SITES=	http://www.users.monornet.hu/linux/gtk2/oldies/
PKGNAMEPREFIX?=	${TYPE}-
PKGNAMESUFFIX?=	-${FLAVOR}-theme
DISTNAME=	aa_${FLAVOR}

MAINTAINER=	danfe@FreeBSD.org
COMMENT=	A port of wonderful MacOS X theme Aluminum Alloy, ${FLAVOR} flavor

TYPE?=		gtk
FLAVOR?=	volcanic

THEME_NAME=	AluminumAlloy-${FLAVOR:tu:C/^(.).*$/\1/g}${FLAVOR:C/^(.)//}
WRKSRC=		${WRKDIR}/${THEME_NAME}

USE_BZIP2=	yes
NO_BUILD=	yes

.if ${TYPE} == "gtk"
THEME_DIR=	${PREFIX}/share/themes/${THEME_NAME}
PLIST_SUB+=	GTK20="" METACITY="@comment "
USE_GNOME=	gtk20
.else	# metacity
THEME_DIR=	${PREFIX}/share/themes/${THEME_NAME}
PLIST_SUB+=	GTK20="@comment " METACITY=""
USE_GNOME=	gnomehier
.endif

do-install:
	@${MKDIR} ${THEME_DIR}
.if ${TYPE} == "gtk"
	cd ${WRKSRC} && ${FIND} gtk-2.0 -name '*[^~]' | \
		${CPIO} -pdu -R ${SHAREOWN}:${SHAREGRP} ${THEME_DIR}
	${INSTALL_DATA} ${WRKSRC}/index.theme ${THEME_DIR}
.else
	cd ${WRKSRC} && ${FIND} metacity-1 -name '*[^~]' | \
		${CPIO} -pdu -R ${SHAREOWN}:${SHAREGRP} ${THEME_DIR}
.endif

.include <bsd.port.mk>
