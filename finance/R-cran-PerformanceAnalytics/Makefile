# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD: finance/R-cran-PerformanceAnalytics/Makefile 319316 2013-05-28 15:15:05Z bf $

PORTNAME=	PerformanceAnalytics
PORTVERSION=	1.1.0
PORTREVISION=	2
CATEGORIES=	finance
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Econometric tools for performance and risk analysis

LICENSE=	GPLv1

RUN_DEPENDS=	R-cran-zoo>0:${PORTSDIR}/math/R-cran-zoo \
		R-cran-xts>=0.8.9:${PORTSDIR}/math/R-cran-xts

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
