# Created by: TAKATSU Tomonari <tota@rtfm.jp>
# $FreeBSD: graphics/rubygem-objectdetect/Makefile 317391 2013-05-04 23:10:25Z tota $

PORTNAME=	objectdetect
PORTVERSION=	0.0.3
PORTREVISION=	6
CATEGORIES=	graphics rubygems
MASTER_SITES=	RG

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Simple library for detecting objects in pictures

LICENSE=	MIT

LIB_DEPENDS=	opencv_legacy:${PORTSDIR}/graphics/opencv

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.pre.mk>

.if ${OSVERSION} < 700000
BROKEN=		does not compile on 6.X
.endif

post-patch:
	${REINPLACE_CMD} -E 's|(objectdetect)|\1/version|' ${WRKSRC}/test/test_helper.rb

.include <bsd.port.post.mk>
