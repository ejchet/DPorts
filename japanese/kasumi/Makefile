# Created by: MANTANI Nobutaka <nobutaka@FreeBSD.org>
# $FreeBSD: japanese/kasumi/Makefile 317521 2013-05-06 15:18:38Z bapt $

PORTNAME=	kasumi
PORTVERSION=	2.5
PORTREVISION=	4
CATEGORIES=	japanese
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP}
MASTER_SITE_SUBDIR=	${PORTNAME}/41436

MAINTAINER=	nobutaka@FreeBSD.org
COMMENT=	A dictionary management tool for anthy

USE_GMAKE=	yes
USE_GNOME=	gnomehier gtk20
LIB_DEPENDS=	anthy.1:${PORTSDIR}/japanese/anthy

GNU_CONFIGURE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		kasumi.1

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.include <bsd.port.mk>
