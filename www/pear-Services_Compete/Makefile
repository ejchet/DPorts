# Created by: Ditesh Shashikant Gathani <ditesh@gathani.org>
# $FreeBSD: www/pear-Services_Compete/Makefile 314410 2013-03-17 08:17:59Z miwi $

PORTNAME=	Services_Compete
PORTVERSION=	0.1.0
CATEGORIES=	www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PHP interface to Compete SnapShop API

BUILD_DEPENDS=	${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request
RUN_DEPENDS=	${PEARDIR}/HTTP/Request.php:${PORTSDIR}/www/pear-HTTP_Request

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
