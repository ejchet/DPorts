# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: ports/net/rubygem-aws-s3/Makefile,v 1.1 2012/11/23 23:01:32 svnexp Exp $

PORTNAME=	aws-s3
PORTVERSION=	0.6.3
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Client library for Amazon S3 REST API

RUN_DEPENDS=	rubygem-xml-simple>=0:${PORTSDIR}/textproc/rubygem-xml-simple \
		rubygem-builder>=0:${PORTSDIR}/devel/rubygem-builder \
		rubygem-mime-types>=0:${PORTSDIR}/misc/rubygem-mime-types

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/s3sh

.include <bsd.port.mk>
