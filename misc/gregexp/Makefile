# Created by: ijliao
# $FreeBSD: misc/gregexp/Makefile 315240 2013-03-25 18:44:20Z eadler $

PORTNAME=	gregexp
PORTVERSION=	0.3
PORTREVISION=	13
CATEGORIES=	misc
MASTER_SITES=	http://dentrassi.de/download/gregexp/%SUBDIR%/
MASTER_SITE_SUBDIR=	${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Graphical regular expression explorer

LIB_DEPENDS=	pcre.3:${PORTSDIR}/devel/pcre

USE_GNOME=	gnomeprefix libgnomeui
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
