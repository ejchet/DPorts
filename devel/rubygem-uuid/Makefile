# Created by: Wen Heping<wenheping@gmail.com>
# $FreeBSD: devel/rubygem-uuid/Makefile 319705 2013-06-02 18:14:53Z swills $

PORTNAME=	uuid
PORTVERSION=	2.3.7
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	UUID Generator for Ruby

RUN_DEPENDS=	rubygem-macaddr>=1.0:${PORTSDIR}/net/rubygem-macaddr

PLIST_FILES+=	bin/uuid

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
