# New ports collection makefile for:	xf86-input-egalax
# Date Created:				2 June 2010
# Whom:					Gleb Smirnoff <glebius@FreeBSD.org>
#
# $FreeBSD: x11-drivers/xf86-input-egalax/Makefile 319055 2013-05-25 14:37:02Z zeising $
#

PORTNAME=	xf86-input-egalax
PORTVERSION=	0.2
CATEGORIES=	x11-drivers
MASTER_SITES=	LOCAL/glebius

MAINTAINER=	glebius@FreeBSD.org
COMMENT=	eGalax touch screen input driver for X.Org

LICENSE=	BSD

XORG_CAT=	driver
MAN4=		egalax.4x

.include <bsd.port.pre.mk>

.if ${OSVERSION} < 800505
IGNORE=         is useless without uep(4) kernel driver
.endif

.if defined(WITH_NEW_XORG)
IGNORE=		does not build with X server 1.12
.endif

.include <bsd.port.post.mk>
