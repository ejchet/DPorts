# Created by: Chris Stuart <firewolf@lightningfire.net>
# $FreeBSD: misc/gkrellmbgchg2/Makefile 315240 2013-03-25 18:44:20Z eadler $

PORTNAME=	gkrellmbgchg2
PORTVERSION=	0.1.11
PORTREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	http://www.bender-suhl.de/stefan/comp/sources/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Plugin for GKrellM, which changes the desktop's background image

LICENSE=	GPLv2

BUILD_DEPENDS=	${LOCALBASE}/include/gkrellm2/gkrellm.h:${PORTSDIR}/sysutils/gkrellm2
RUN_DEPENDS=	gkrellm:${PORTSDIR}/sysutils/gkrellm2

USE_GNOME=	gtk20

PLIST_FILES=	libexec/gkrellm2/plugins/gkrellmbgchg.so

.include <bsd.port.pre.mk>

do-build:
	cd ${BUILD_WRKSRC} && ${CC} -shared ${CFLAGS} -fPIC \
		`pkg-config --cflags --libs gkrellm` gkrellmbgchg.c \
		-o gkrellmbgchg.so

do-install:
	@${MKDIR} ${PREFIX}/libexec/gkrellm2/plugins
	${INSTALL_DATA} ${WRKSRC}/gkrellmbgchg.so \
		${PREFIX}/libexec/gkrellm2/plugins

.include <bsd.port.post.mk>
