# Created by: Dave Grochowski
# $FreeBSD: devel/gccmakedep/Makefile 321952 2013-06-28 08:13:57Z bapt $

PORTNAME=	gccmakedep
PORTVERSION=	1.0.2
PORTREVISION=	1
CATEGORIES=	devel

MAINTAINER=	x11@FreeBSD.org
COMMENT=	Create dependencies in makefiles using 'gcc -M'

XORG_CAT=	util

BUILD_DEPENDS=	tradcpp:${PORTSDIR}/devel/tradcpp

MAN1=		gccmakedep.1

PLIST_FILES=	bin/gccmakedep
CONFIGURE_ENV+=	ac_cv_path_RAWCPP=tradcpp

.include <bsd.port.mk>
