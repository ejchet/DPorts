# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: ports/graphics/pear-Image_3D/Makefile,v 1.6 2012/12/03 18:36:19 svnexp Exp $

PORTNAME=	Image_3D
PORTVERSION=	0.4.2
CATEGORIES=	graphics www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PEAR class allows the rendering of 3 dimensional objects

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PHP=	gd

LATEST_LINK=	pear-${PORTNAME}

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
