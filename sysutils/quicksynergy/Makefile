# Created by: Lars Engels <lme@FreeBSD.org>
# $FreeBSD: sysutils/quicksynergy/Makefile 316683 2013-04-27 18:25:24Z mva $

PORTNAME=	quicksynergy
PORTVERSION=	0.9.0
PORTREVISION=	5
CATEGORIES=	sysutils
MASTER_SITES=	SF/${PORTNAME}/Linux/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A graphical interface for easily configuring Synergy2

BUILD_DEPENDS=	synergys:${PORTSDIR}/sysutils/synergy

GNU_CONFIGURE=	yes
USES=		pathfix pkgconfig gettext iconv
USE_GNOME=	gnomeprefix libglade2

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

PLIST_FILES=	bin/quicksynergy \
		share/locale/pt_BR/LC_MESSAGES/quicksynergy.mo

.include <bsd.port.mk>
