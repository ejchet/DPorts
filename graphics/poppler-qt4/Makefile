# Created by: Michael Johnson <ahze@FreeBSD.org>
# $FreeBSD: graphics/poppler-qt4/Makefile 314805 2013-03-21 05:27:16Z mezz $
#   $MCom: ports/graphics/poppler-qt4/Makefile,v 1.18 2012/10/14 23:04:21 kwm Exp $

PORTREVISION=	0
PKGNAMESUFFIX=	-qt4

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Qt4 bindings to poppler

MASTERDIR=	${.CURDIR}/../../graphics/poppler
SLAVEPORT=	qt4
PLIST=		${.CURDIR}/pkg-plist

pre-build:
	cd ${WRKSRC}/poppler && ${SETENV} ${MAKE_ENV} ${GMAKE} ${MAKE_FLAGS} \
		Makefile ${MAKE_ARGS} libpoppler-arthur.la

.include "${MASTERDIR}/Makefile"
