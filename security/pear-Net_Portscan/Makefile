# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: security/pear-Net_Portscan/Makefile 314343 2013-03-16 08:30:46Z miwi $

PORTNAME=	Net_Portscan
PORTVERSION=	1.0.3
CATEGORIES=	security pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Provides an API for scanning ports

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
