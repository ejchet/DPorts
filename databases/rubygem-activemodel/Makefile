# Created by: Philip M. Gollucci <pgollucci@p6m7g8.com>
# $FreeBSD: databases/rubygem-activemodel/Makefile 315783 2013-04-11 11:30:00Z bdrewery $

PORTNAME=	activemodel
PORTVERSION=	3.2.13
CATEGORIES=	databases rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	A toolkit for building modeling frameworks

RUN_DEPENDS=	rubygem-activesupport>=${PORTVERSION}:${PORTSDIR}/devel/rubygem-activesupport \
		rubygem-builder>=3.0.0:${PORTSDIR}/devel/rubygem-builder

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
