# New ports collection makefile for:	liblscp
# Date created:		2007-03-06
# Whom:			trasz <trasz@pin.if.uz.zgora.pl>
#
# $FreeBSD: audio/liblscp/Makefile 314640 2013-03-19 13:04:30Z eadler $
#

PORTNAME=	liblscp
PORTVERSION=	0.5.6
CATEGORIES=	audio
MASTER_SITES=	SF/qsampler/${PORTNAME}/${PORTVERSION} \
		http://download.linuxsampler.org/packages/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Wrapper around the LSCP network protocol

LICENSE=	LGPL21

USES=	pathfix
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
