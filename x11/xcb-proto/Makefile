# Created by: Ashish Shukla <wahjava@gmail.com>
# $FreeBSD: x11/xcb-proto/Makefile 319055 2013-05-25 14:37:02Z zeising $

PORTNAME=	xcb-proto
PORTVERSION=	1.8
CATEGORIES=	x11 python
MASTER_SITES=	http://xcb.freedesktop.org/dist/

MAINTAINER=	x11@FreeBSD.org
COMMENT=	The X protocol C-language Binding (XCB) protocol

BUILD_DEPENDS=	xmllint:${PORTSDIR}/textproc/libxml2

USE_BZIP2=	yes
USES=		pathfix
USE_PYTHON=	2.5+
GNU_CONFIGURE=	yes

DATADIR=	${PREFIX}/share/xcb

.include <bsd.port.mk>
