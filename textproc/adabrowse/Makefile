# Created by: John Marino <draco@marino.st>
# $FreeBSD: textproc/adabrowse/Makefile 323390 2013-07-21 14:22:24Z marino $

PORTNAME=	adabrowse
PORTVERSION=	4.0.3
CATEGORIES=	textproc
MASTER_SITES=	http://home.datacomm.ch/t_wolf/tw/ada95/adabrowse/
DISTNAME=	${PORTNAME}_${PORTVERSION}_src

MAINTAINER=	draco@marino.st
COMMENT=	HTML generator for Ada 95 library unit specifications

BUILD_DEPENDS=	asis>=2011:${PORTSDIR}/lang/asis \
		gnat_util>=2013:${PORTSDIR}/lang/gnat_util

LICENSE=	GPLv2

USES=		ada gmake
WRKSRC=		${WRKDIR}/${PORTNAME}_${PORTVERSION}
MAKE_ENV=	ADA_INCLUDE_PATH=${LOCALBASE}/lib/asis
MAKE_JOBS_UNSAFE=yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/adabrowse ${PREFIX}/bin/adabrowse

.include <bsd.port.mk>
