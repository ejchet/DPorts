# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: www/pear-Services_TwitPic/Makefile 314238 2013-03-15 02:43:08Z miwi $

PORTNAME=	Services_TwitPic
PORTVERSION=	0.1.0
CATEGORIES=	www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PHP Interface to TwitPic's API

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
