# Created by: Michael Johnson <ahze@FreeBSD.org>
# $FreeBSD: audio/alac/Makefile 320944 2013-06-14 14:49:20Z bapt $

PORTNAME=	alac
PORTVERSION=	0.2.0
CATEGORIES=	audio
MASTER_SITES=	http://craz.net/programs/itunes/files/
DISTNAME=	${PORTNAME}_decoder-${PORTVERSION}
EXTRACT_SUFX=	.tgz

MAINTAINER=	multimedia@FreeBSD.org
COMMENT=	Basic decoder for Apple Lossless Audio Codec files (ALAC)

WRKSRC=		${WRKDIR}/${PORTNAME}_decoder
ALL_TARGET=	alac

OPTIONS_DEFINE=	DOCS DEBUG

PLIST_FILES=	bin/alac
PORTDOCS=	README

.include <bsd.port.options.mk>

post-patch:
.if ! ${PORT_OPTIONS:MDEBUG}
	@${REINPLACE_CMD} -e 's|-ggdb||' \
		${WRKSRC}/${MAKEFILE}
.endif
	@${REINPLACE_CMD} -e 's|gcc|${CC}|; s|-O3|${CFLAGS}|' \
		${WRKSRC}/${MAKEFILE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/alac ${PREFIX}/bin/
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
