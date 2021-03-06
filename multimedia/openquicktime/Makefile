# New ports collection makefile for:	openquicktime
# Date created:				Mon Sep 24 16:26:33 BRT 2001
# Whom:			Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
#
# $FreeBSD: ports/multimedia/openquicktime/Makefile,v 1.33 2012/11/17 05:59:52 svnexp Exp $
#

PORTNAME=	openquicktime
PORTVERSION=	1.0
PORTREVISION=	6
CATEGORIES=	multimedia
MASTER_SITES=	SF/${PORTNAME}/OpenQuicktime%20v1/${PORTVERSION}b
DISTNAME=	${PORTNAME}-${PORTVERSION}-src
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Portable library for handling Apple's QuickTime(TM) files

LIB_DEPENDS=	jpeg.11:${PORTSDIR}/graphics/jpeg

GNU_CONFIGURE=	yes
USE_GNOME=	gtk12
USE_GMAKE=	yes
USE_LDCONFIG=	yes
PKGDEINSTALL=	${PKGINSTALL}

OPTIONS_DEFINE=	DEBUG

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDEBUG}
CONFIGURE_ARGS+=	--enable-debug=no
.endif

.if ${ARCH} == "x86_64"
CFLAGS+=	-fPIC
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|xCC|xc| ; s|-O2||' \
		-e 's|ftello64|ftello| ; s|fseeko64|fseeko|' \
		${CONFIGURE_WRKSRC}/${CONFIGURE_SCRIPT}
	@${REINPLACE_CMD} -e 's|"m"|"g"|' \
		${WRKSRC}/audioplugin/MP3/audioencoder/lame3.70/quantize-pvt.c
	@${REINPLACE_CMD} \
		-e 's|-fpic||' \
		${CONFIGURE_WRKSRC}/${CONFIGURE_SCRIPT}

post-install:
	@${SETENV} PKG_PREFIX=${PREFIX} ${SH} \
		${PKGINSTALL} ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
