# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: ports/www/pear-Services_Amazon_S3/Makefile,v 1.6 2013/02/04 09:37:12 svnexp Exp $

PORTNAME=	Services_Amazon_S3
PORTVERSION=	0.4.0
CATEGORIES=	www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PHP API for Amazon S3 (Simple Storage Service)

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear \
		${PEARDIR}/HTTP/Request2.php:${PORTSDIR}/www/pear-HTTP_Request2 \
		${PEARDIR}/Crypt/HMAC2.php:${PORTSDIR}/security/pear-Crypt_HMAC2
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear \
		${PEARDIR}/HTTP/Request2.php:${PORTSDIR}/www/pear-HTTP_Request2 \
		${PEARDIR}/Crypt/HMAC2.php:${PORTSDIR}/security/pear-Crypt_HMAC2

USE_PHP=	spl
PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
