# Created by: Igor Pokrovsky <tiamat@telegraph.spb.ru>
# $FreeBSD: graphics/gltt/Makefile 316593 2013-04-26 09:23:54Z bapt $

PORTNAME=	gltt
PORTVERSION=	2.5.2
PORTREVISION=	8
CATEGORIES=	graphics
MASTER_SITES=	http://gltt.sourceforge.net/download/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	TrueType fonts rendering using OpenGL

LIB_DEPENDS=	ttf:${PORTSDIR}/print/freetype

USE_AUTOTOOLS=	libtool
USE_GL=		gl glut
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib"
CPPFLAGS+=	-I${LOCALBASE}/include
CONFIGURE_ARGS=	--with-ttf-includes=${LOCALBASE}/include/freetype1 \
		--with-ttf-libraries=${LOCALBASE}/lib \
		--with-gl-includes=${LOCALBASE}/include \
		--with-gl-libraries=${LOCALBASE}/lib \
		--with-glut-includes=${LOCALBASE}/include \
		--with-glut-libraries=${LOCALBASE}/lib
USE_LDCONFIG=	yes

.include <bsd.port.mk>
