# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: mail/pear-Mail_Mbox/Makefile 314229 2013-03-15 02:29:45Z miwi $

PORTNAME=	Mail_Mbox
PORTVERSION=	0.6.3
CATEGORIES=	mail www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PEAR Read and modify Unix MBOXes

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
