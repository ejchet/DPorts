# New ports collection makefile for:	uk-webalizer
# Date created:		22 May 2001
# Whom:			mike@LITech.lviv.ua
#
# $FreeBSD: ports/ukrainian/gd/Makefile,v 1.5 2012/11/17 06:02:26 svnexp Exp $
#

MASTERDIR=	${.CURDIR}/../../graphics/gd
CATEGORIES=	ukrainian

MAINTAINER=	mi@aldan.algebra.com
COMMENT=	A graphics library for fast image creation with KOI8-U support

BUILD_DEPENDS=  ${NONEXISTENT}:${PORTSDIR}/x11-fonts/geminifonts:fetch
GD_FONTS=	${DISTDIR}/x-koi8u.tgz koi6x10.bdf koi6x13.bdf \
		koi10x16b.bdf koi9x15.bdf koi10x20.bdf

.include "${MASTERDIR}/Makefile"
