# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: devel/R-cran-reshape2/Makefile 319316 2013-05-28 15:15:05Z bf $

PORTNAME=	reshape2
PORTVERSION=	1.2.2
PORTREVISION=	3
CATEGORIES=	devel
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Flexibly reshape data: a reboot of the reshape package

LICENSE=	MIT

RUN_DEPENDS=	R-cran-plyr>=1.5:${PORTSDIR}/devel/R-cran-plyr \
		R-cran-stringr>0:${PORTSDIR}/textproc/R-cran-stringr

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
