# Created by: Kimura Fuyuki <fuyuki@hadaly.org>
# $FreeBSD: x11-toolkits/py-gtkglext/Makefile 316355 2013-04-23 14:20:25Z bapt $

PORTNAME=	gtkglext
PORTVERSION=	1.1.0
PORTREVISION=	6
CATEGORIES=	x11-toolkits python
MASTER_SITES=	SF/${PORTNAME}/py${PORTNAME}/${PORTVERSION}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	pygtkglext-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Python binding for GtkGLExt

BUILD_DEPENDS=	${PYTHON_SITELIBDIR}/OpenGL/__init__.py:${PORTSDIR}/graphics/py-opengl
LIB_DEPENDS=	gtkglext-x11-1.0.0:${PORTSDIR}/x11-toolkits/gtkglext
RUN_DEPENDS=	${PYTHON_SITELIBDIR}/OpenGL/__init__.py:${PORTSDIR}/graphics/py-opengl

USE_BZIP2=	yes
USE_PYTHON=	yes
USES=		pathfix pkgconfig
USE_GNOME=	pygtk2
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <bsd.port.mk>
