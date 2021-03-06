# Created by: Jose Alonso Cardenas Marquez <acardenas@bsd.org.pe>
# $FreeBSD: sysutils/hoz/Makefile 316744 2013-04-28 20:01:07Z bapt $

PORTNAME=	hoz
PORTVERSION=	1.65
PORTREVISION=	7
CATEGORIES=	sysutils
MASTER_SITES=	SF/${PORTNAME}/OldFiles
DISTNAME=	${PORTNAME}-${PORTVERSION:S/.//}

MAINTAINER=	acm@FreeBSD.org
COMMENT=	File splitter, GTK and CLI versions

USE_GNOME=	#
USE_GMAKE=	yes

PORTDOCS=	README

OPTIONS_DEFINE=	CLI GTK2 LANG_ES LANG_EN LANG_FR
OPTIONS_DEFAULT=	CLI GTK2 LANG_EN
LANG_EN_DESC=	language support

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MGTK2}
USE_GNOME+=	gtk20
.endif

.if ! ${PORT_OPTIONS:MCLI}
ALL_TARGET=	gtk
.else
PLIST_FILES+=	bin/hoz
.endif

.if ! ${PORT_OPTIONS:MGTK2}
ALL_TARGET=	cli
.else
PLIST_FILES+=	bin/ghoz
.endif

.if ${PORT_OPTIONS:MLANG_ES}
MAKE_ENV+=	LANG="-DHOZ_LANG_ES"
.endif

.if ${PORT_OPTIONS:MLANG_EN}
MAKE_ENV+=	LANG="-DHOZ_LANG_EN"
.endif

.if ${PORT_OPTIONS:MLANG_FR}
MAKE_ENV+=	LANG="-DHOZ_LANG_FR"
.endif

do-install:
.if ${PORT_OPTIONS:MCLI}
	${INSTALL_PROGRAM} ${WRKSRC}/hoz ${PREFIX}/bin
.endif
.if ${PORT_OPTIONS:MGTK2}
	${INSTALL_PROGRAM} ${WRKSRC}/ghoz ${PREFIX}/bin
.endif
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
