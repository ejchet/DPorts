# New ports collection makefile for:	rubygem-familia
# Date created:		2011-11-10
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: databases/rubygem-familia/Makefile 300896 2012-07-14 13:54:48Z beat $
#

PORTNAME=	familia
PORTVERSION=	0.7.1
CATEGORIES=	databases rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Organize and store ruby objects in Redis

RUN_DEPENDS=	rubygem-gibbler>=0.8.6:${PORTSDIR}/devel/rubygem-gibbler \
		rubygem-multi_json>=0.0.5:${PORTSDIR}/devel/rubygem-multi_json \
		rubygem-redis>=2.1.0:${PORTSDIR}/databases/rubygem-redis \
		rubygem-storable>=0.8.6:${PORTSDIR}/devel/rubygem-storable \
		rubygem-uri-redis>=0.4.2:${PORTSDIR}/net/rubygem-uri-redis

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
