# Created by: MITA Yoshio <mita@iis.u-tokyo.ac.jp>
# $FreeBSD: deskutils/xcalendar/Makefile 321984 2013-06-28 20:56:05Z bapt $

PORTNAME=	xcalendar
PORTVERSION=	4.0.2008
PORTREVISION=	2
CATEGORIES=	deskutils
MASTER_SITES=	${MASTER_SITE_PORTS_JP}
DISTNAME=	${PORTNAME}-4.0+i18n

MAINTAINER=	sarumaru@jp.FreeBSD.org
COMMENT=	A calendar with a notebook for X11 (internationalized version)

WRKSRC=		${WRKDIR}/${PORTNAME}

USES=		imake
USE_XORG=	ice sm x11 xaw xext xmu xt
USE_GMAKE=	yes
MAKE_ENV=	FILESDIR=${FILESDIR}
ALL_TARGET=	all XCal-uj.ad xcalendar-uj.hlp xcalendar-uj.man
MAN1=		xcalendar.1
MANLANG=	"" ja

.include <bsd.port.mk>
