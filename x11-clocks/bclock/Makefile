# Created by: Brian Handy <handy@physics.montana.edu>
# $FreeBSD: x11-clocks/bclock/Makefile 321957 2013-06-28 11:51:05Z bapt $

PORTNAME=	bclock
PORTVERSION=	1.0
PORTREVISION=	2
CATEGORIES=	x11-clocks
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	X11/clocks

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Round, analog X11 clock with Bezier curve hands

USES=		imake
USE_XORG=	ice sm x11 xext xmu xt
MAN1=		bclock.1

PLIST_FILES=	bin/bclock \
		lib/X11/app-defaults/Clock-color

.include <bsd.port.mk>
