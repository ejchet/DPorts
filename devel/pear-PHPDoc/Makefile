# Created by: Gerrit Beine (<gerrit@beine-computer.de>)
# $FreeBSD: devel/pear-PHPDoc/Makefile 318028 2013-05-13 09:18:35Z miwi $

PORTNAME=	PHPDoc
PORTVERSION=	0.1.0
CATEGORIES=	devel www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tool to generate documentation from the source

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
