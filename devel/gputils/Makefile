# Created by: Samuel Tardieu <sam@rfc1149.net>
# $FreeBSD: devel/gputils/Makefile 318532 2013-05-19 14:50:45Z tijl $

PORTNAME=	gputils
PORTVERSION=	1.2.0
CATEGORIES=	devel
MASTER_SITES=	SF

MAINTAINER=	tijl@FreeBSD.org
COMMENT=	A set of utilities for Microchip PIC microcontrollers

LICENSE=	GPLv2

CONFLICTS=	gplink-[0-9]*
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS= --disable-dependency-tracking --disable-html-doc

MANLANG=	"" fr
MAN1=		gpasm.1 gpdasm.1 gplib.1 gplink.1 gpstrip.1 gputils.1 \
		gpvc.1 gpvo.1

.include <bsd.port.mk>
