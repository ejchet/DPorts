# New ports collection makefile for:   w3m-image
# Date Created:                22 July 2001
# Whom:                        MANTANI Nobutaka <nobutaka@nobutaka.com>
#
# $FreeBSD: ports/www/w3m-img/Makefile,v 1.7 2012/11/17 06:03:10 svnexp Exp $
#

PKGNAMESUFFIX=	-img

MAINTAINER=	nobutaka@FreeBSD.org
COMMENT=	A pager/text-based WWW browser with inline image support

MASTERDIR=	${.CURDIR}/../../www/w3m
PKGDIR=		${.CURDIR}
PLIST=		${MASTERDIR}/pkg-plist

WITH_INLINE_IMAGE=	yes
CONFLICTS=	ja-w3m-0.5.* ja-w3m-img-0.5.* w3m-0.5.* w3m-m17n-0.5.* w3m-m17n-img-0.5.*

.include "${MASTERDIR}/Makefile"
