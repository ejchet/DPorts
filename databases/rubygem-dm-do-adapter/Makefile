# New ports collection makefile for:	rubygem-dm-do-adapter
# Date created:		2010-09-10
# Whom:			Jyun-Yan You <jyyou@cs.nctu.edu.tw>
#
# $FreeBSD: ports/databases/rubygem-dm-do-adapter/Makefile,v 1.5 2012/11/17 05:55:24 svnexp Exp $
#

PORTNAME=	dm-do-adapter
PORTVERSION=	1.2.0
CATEGORIES=	databases rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	DataObjects Adapter for DataMapper

RUN_DEPENDS=	rubygem-data_objects>=0.10.6:${PORTSDIR}/databases/rubygem-data_objects \
		rubygem-dm-core>=${PORTVERSION}:${PORTSDIR}/databases/rubygem-dm-core

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
