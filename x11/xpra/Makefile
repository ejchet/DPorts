# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: x11/xpra/Makefile 315154 2013-03-24 19:49:13Z swills $

PORTNAME=	xpra
PORTVERSION=	0.8.8
PORTREVISION=	0
CATEGORIES=	x11
MASTER_SITES=	http://xpra.org/src/

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Xpra gives you persistent remote applications for X

BUILD_DEPENDS=	cython:${PORTSDIR}/lang/cython \
		ipython:${PORTSDIR}/devel/ipython \
		${PYTHON_SITELIBDIR}/gtk-2.0/gtk/__init__.py:${PORTSDIR}/x11-toolkits/py-gtk2
RUN_DEPENDS=	cython:${PORTSDIR}/lang/cython \
		ipython:${PORTSDIR}/devel/ipython \
		${PYTHON_SITELIBDIR}/gtk-2.0/gtk/__init__.py:${PORTSDIR}/x11-toolkits/py-gtk2 \
		${PYTHON_SITELIBDIR}/PIL/__init__.py:${PORTSDIR}/graphics/py-imaging \
		py*-notify>=0:${PORTSDIR}/devel/py-notify \
		Xvfb:${PORTSDIR}/x11-servers/xorg-vfbserver
LIB_DEPENDS+=	avcodec.1:${PORTSDIR}/multimedia/ffmpeg

MANCOMPRESSED=	no
MAN1=		xpra.1 xpra_launcher.1 parti.1

USE_BZIP2=	yes
USE_PYTHON=	yes
USE_XORG=	x11 xext xtst xfixes xcomposite xdamage

USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	parti_all

.include <bsd.port.mk>
