# Created by: Pav Lucistnik <pav@FreeBSD.org>
# $FreeBSD: devel/pear-OLE/Makefile 322581 2013-07-09 21:26:48Z pav $

PORTNAME=	OLE
DISTVERSION=	1.0.0RC1
CATEGORIES=	devel www pear

MAINTAINER=	ports@FreeBSD.org
COMMENT=	PEAR class for reading and writing OLE containers

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
