# Created by: Joe Marcus Clarke <marcus@FreeBSD.org>
# $FreeBSD: databases/libgda4-mdb/Makefile 314630 2013-03-19 10:26:51Z kwm $
#   $MCom: ports/databases/libgda4-mdb/Makefile,v 1.5 2012/03/13 01:34:31 mezz Exp $

PORTREVISION=	0
CATEGORIES=	databases gnome
PKGNAMESUFFIX=	4-mdb

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Provides mdb backend for the libgda4 library

MASTERDIR=	${.CURDIR}/../libgda4
BUILD_WRKSRC=	${WRKSRC}/providers/mdb/
INSTALL_WRKSRC=	${BUILD_WRKSRC}
PLIST=		${.CURDIR}/pkg-plist

LIBGDA4_SLAVE=	mdb

.include "${MASTERDIR}/Makefile"
