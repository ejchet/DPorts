# Created by: Lars Koeller <lkoeller@cc.fh-lippe.de>
# $FreeBSD: x11-clocks/tclock/Makefile 322014 2013-06-28 23:05:59Z bapt $

PORTNAME=	tclock
PORTVERSION=	1.0.1
PORTREVISION=	2
CATEGORIES=	x11-clocks
MASTER_SITES=	http://www.linta.de/distfiles/ \
		ftp://ftp.uni-potsdam.de/pub/X11/tools/clocks/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	aehlig@linta.de
COMMENT=	Transparent analog clock for x11

NO_WRKSUBDIR=	yes
USES=		imake
USE_XORG=	x11 xext
MAN1=		tclock.1
PLIST_FILES=	bin/tclock

LICENSE=	GPLv1
LICENSE_FILE=	${WRKSRC}/COPYING

.include <bsd.port.mk>
