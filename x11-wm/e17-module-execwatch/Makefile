# Created by: Grzegorz Blach <gblach@FreeBSD.org>
# $FreeBSD: x11-wm/e17-module-execwatch/Makefile 318126 2013-05-13 19:56:09Z gblach $

PORTNAME=	execwatch
PORTVERSION=	20130510
CATEGORIES=	x11-wm enlightenment
MASTER_SITES=	LOCAL/gblach/e17/modules/
PKGNAMEPREFIX=	e17-module-

MAINTAINER=	gblach@FreeBSD.org
COMMENT=	An e17 module to show state of a periodically executed command

BUILD_DEPENDS=	enlightenment:${PORTSDIR}/x11-wm/enlightenment
RUN_DEPENDS=	enlightenment:${PORTSDIR}/x11-wm/enlightenment

DIST_SUBDIR=	e17
USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_EFL=	edje libtool_hack modarch_hack
USE_GNOME=	pkgconfig

.include <bsd.port.mk>
