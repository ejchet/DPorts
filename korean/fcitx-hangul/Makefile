# Created by: Alexey Dokuchaev <danfe@FreeBSD.org>
# $FreeBSD: korean/fcitx-hangul/Makefile 316407 2013-04-24 07:35:40Z ak $

PORTNAME=	fcitx-hangul
PORTVERSION=	0.2.0
CATEGORIES=	korean
MASTER_SITES=	GOOGLE_CODE
PROJECTHOST=	fcitx
DIST_SUBDIR=	fcitx

MAINTAINER=	lichray@gmail.com
COMMENT=	Hangul support for Fcitx

LICENSE=	GPLv2

LIB_DEPENDS=	fcitx-config:${PORTSDIR}/chinese/fcitx \
		hangul:${PORTSDIR}/korean/libhangul

USE_XZ=		yes
USES=		cmake gettext
USE_GNOME=	intltool
INSTALLS_ICONS=	yes

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -lintl

.include <bsd.port.mk>
