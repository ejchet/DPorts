# Created by: Zhihao Yuan <lichray@gmail.com>
# $FreeBSD: chinese/fcitx-googlepinyin/Makefile 316407 2013-04-24 07:35:40Z ak $

PORTNAME=	fcitx-googlepinyin
PORTVERSION=	0.1.6
CATEGORIES=	chinese
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}
DIST_SUBDIR=	fcitx

MAINTAINER=	lichray@gmail.com
COMMENT=	A libgooglepinyin support for Fcitx

LIB_DEPENDS=	fcitx-config:${PORTSDIR}/chinese/fcitx \
		googlepinyin:${PORTSDIR}/chinese/libgooglepinyin

USE_XZ=		yes
USES=		cmake gettext
USE_GNOME=	intltool

PROJECTHOST=	fcitx

.include <bsd.port.mk>
