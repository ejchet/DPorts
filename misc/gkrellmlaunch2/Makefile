# Created by: Zach Thompson <hideo@lastamericanempire.com>
# $FreeBSD: misc/gkrellmlaunch2/Makefile 315240 2013-03-25 18:44:20Z eadler $

PORTNAME=	gkrellmlaunch
PORTVERSION=	0.5
PORTREVISION=	8
CATEGORIES=	misc
MASTER_SITES=	SF
PKGNAMESUFFIX=	2

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Application launcher plugin for GKrellM2

BUILD_DEPENDS=	${LOCALBASE}/include/gkrellm2/gkrellm.h:${PORTSDIR}/sysutils/gkrellm2
RUN_DEPENDS=	gkrellm:${PORTSDIR}/sysutils/gkrellm2

PLIST_FILES=	libexec/gkrellm2/plugins/gkrellmlaunch.so
ALL_TARGET=	${PORTNAME}.so

do-install:
	${INSTALL_DATA} ${WRKSRC}/gkrellmlaunch.so ${PREFIX}/libexec/gkrellm2/plugins

.include <bsd.port.mk>
