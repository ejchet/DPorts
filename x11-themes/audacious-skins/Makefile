# Created by: Emanuel Haupt <ehaupt@FreeBSD.org>
# $FreeBSD: x11-themes/audacious-skins/Makefile 316224 2013-04-22 10:21:14Z ehaupt $

PORTNAME=	audacious-skins
PORTVERSION=	0.4
CATEGORIES=	x11-themes
MASTER_SITES=	CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	Collection of audacious skins

BUILD_DEPENDS=	audacious:${PORTSDIR}/multimedia/audacious

USE_XZ=		yes
NO_BUILD=	yes

DATADIR=	${PREFIX}/share/audacious

do-install:
	${MKDIR} ${DATADIR}/Skins
	${INSTALL_DATA} ${WRKSRC}/Skins/*/*.wsz ${DATADIR}/Skins

.include <bsd.port.mk>
