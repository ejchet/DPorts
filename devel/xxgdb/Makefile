# Created by: jkh
# $FreeBSD: devel/xxgdb/Makefile 321957 2013-06-28 11:51:05Z bapt $

PORTNAME=	xxgdb
PORTVERSION=	1.12
PORTREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	utilities

MAINTAINER=	cy@FreeBSD.org
COMMENT=	X window interface for gdb

USES=		imake
USE_XORG=	ice sm x11 xaw xext xmu xt
MAN1=		xxgdb.1

# This isn't included in the original Imakefile for some reason.
#  Yes, I know this will recompile the program every time, but
#  we have the cookie anyway and it's much easier this way
#  than modifying the Imakefile.
post-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -o xxgdbiowin xxgdbiowin.c

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xxgdbiowin ${PREFIX}/bin

.include <bsd.port.mk>
