# New ports collection makefile for:	wbxml
# Date created:			Nov 04, 2005
# Whom:				Clemens Zauner <czauner+ports@onlineloop.com>
#
# $FreeBSD: textproc/wbxml2/Makefile 314960 2013-03-22 20:06:14Z makc $
#

PORTNAME=	wbxml2
PORTVERSION=	0.10.9
CATEGORIES=	textproc devel
MASTER_SITES=	SF/libwbxml/libwbxml/${PORTVERSION}
DISTNAME=	libwbxml-${PORTVERSION}

MAINTAINER=	flo@FreeBSD.org
COMMENT=	Library & tools for converting wbxml<->xml

LIB_DEPENDS=	expat.6:${PORTSDIR}/textproc/expat2 \
		iconv.3:${PORTSDIR}/converters/libiconv

WRKSRC=			${WRKDIR}/libwbxml-${PORTVERSION}
CONFIGURE_WRKSRC=	${WRKDIR}/libwbxml-${PORTVERSION}/build
BUILD_WRKSRC=		${CONFIGURE_WRKSRC}
INSTALL_WRKSRC=		${CONFIGURE_WRKSRC}

USE_BZIP2=	yes
USES=		cmake
CMAKE_SOURCE_PATH=	..
USE_LDCONFIG=	yes

DOCSDIR=	${PREFIX}/share/doc/libwbxml

post-extract:
	@${MKDIR} ${CONFIGURE_WRKSRC}

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in AUTHORS BUGS ChangeLog NEWS README References THANKS TODO
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
