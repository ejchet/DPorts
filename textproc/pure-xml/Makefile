# Created by: Zhihao Yuan <lichray@gmail.com>
# $FreeBSD: textproc/pure-xml/Makefile 322734 2013-07-10 21:28:56Z bapt $

PORTNAME=	pure-xml
PORTVERSION=	0.6
PORTREVISION=	1
CATEGORIES=	textproc

MAINTAINER=	lichray@gmail.com
COMMENT=	Pure language interface for libxml2 and libxslt

USE_PURE=	yes
USE_GNOME=	libxml2 libxslt

PLIST_FILES=	lib/pure/xml.pure \
		lib/pure/xml.so

.include "${.CURDIR}/../../lang/pure/bsd.pure.mk"
.include <bsd.port.mk>
