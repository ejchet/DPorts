# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: www/pear-Services_W3C_HTMLValidator/Makefile 314404 2013-03-17 08:11:30Z miwi $

PORTNAME=	Services_W3C_HTMLValidator
PORTVERSION=	1.0.0
PORTEPOCH=	1
CATEGORIES=	www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	An Object Oriented Interface to the W3C HTML Validator service.

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear \
		${PEARDIR}/HTTP/Request2.php:${PORTSDIR}/www/pear-HTTP_Request2
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear \
		${PEARDIR}/HTTP/Request2.php:${PORTSDIR}/www/pear-HTTP_Request2

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
