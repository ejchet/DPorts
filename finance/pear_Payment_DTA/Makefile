# Created by: Dorit Rottner (<rottner@punkt.de>)
# $FreeBSD: finance/pear_Payment_DTA/Makefile 318063 2013-05-13 09:59:51Z miwi $

PORTNAME=	Payment_DTA
PORTVERSION=	1.2.1
CATEGORIES=	finance pear

MAINTAINER=	rottner@punkt.de
COMMENT=	PEAR class to create and handle DTA files used in Germany

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
