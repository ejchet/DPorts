# Created by: Thierry Thomas (<thierry@FreeBSD.org>)
# $FreeBSD: net/pear-Net_DIME/Makefile 314267 2013-03-15 07:09:50Z miwi $

PORTNAME=	Net_DIME
PORTVERSION=	1.0.2
PORTEPOCH=	1
CATEGORIES=	net pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	The PEAR::Net_DIME class implements DIME encoding

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
