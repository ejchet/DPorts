# $FreeBSD: ports/graphics/icc-profiles-basiccolor/Makefile,v 1.1 2013/02/15 16:49:14 svnexp Exp $

PORTNAME=	icc-profiles-basiccolor
PORTVERSION=	1.2.0
CATEGORIES=	graphics
MASTER_SITES=	SF/openicc/basICColor-Profiles
DISTNAME=	${PORTNAME}-printing2009-${PORTVERSION}

COMMENT=	CMYK ICC profiles for ISO Printing conditions (ISO 12647-2)

MAINTAINER=	bsam@FreeBSD.org

USE_BZIP2=	yes
GNU_CONFIGURE=	yes

SYSCOLORDIR=	share/color
PLIST_SUB=	SYSCOLORDIR=${SYSCOLORDIR}

.include <bsd.port.mk>
