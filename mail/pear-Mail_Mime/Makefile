# Created by: Thierry Thomas (<thierry@pompo.net>)
# $FreeBSD: mail/pear-Mail_Mime/Makefile 323054 2013-07-15 14:57:29Z miwi $

PORTNAME=	Mail_Mime
PORTVERSION=	1.8.8
PORTEPOCH=	2
CATEGORIES=	mail www pear

MAINTAINER=	joehorn@gmail.com
COMMENT=	PEAR classes to create and decode MIME messages

LICENSE=	BSD

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
