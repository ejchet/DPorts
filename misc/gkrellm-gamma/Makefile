# New ports collection makefile for:	gkrellm-gamma
# Date Created:				Jun 26 2003
# Whom:					Pav Lucistnik <pav@oook.cz>
#
# $FreeBSD: misc/gkrellm-gamma/Makefile 322581 2013-07-09 21:26:48Z pav $
#

PORTNAME=	gkrellm-gamma
PORTVERSION=	2.03
PORTREVISION=	13
CATEGORIES=	misc
MASTER_SITES=	http://www.sweb.cz/tripie/gkrellm/gamma/dist/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	XFree86 gamma correction plugin for GKrellM

BUILD_DEPENDS=	${LOCALBASE}/include/gkrellm2/gkrellm.h:${PORTSDIR}/sysutils/gkrellm2
RUN_DEPENDS=	gkrellm:${PORTSDIR}/sysutils/gkrellm2

USE_XORG=	x11 xxf86vm
PLIST_FILES=	libexec/gkrellm2/plugins/gamma.so
MAKE_ENV=	PLUGIN_DIR=${PREFIX}/libexec/gkrellm2/plugins
ALL_TARGET=	gamma.so

.include <bsd.port.mk>
