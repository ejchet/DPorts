# New ports collection makefile for:	rubygem-ramaze
# Date created:		2010-01-20
# Whom:			Jyun-Yan You <jyyou@cs.nctu.edu.tw>
#
# $FreeBSD: ports/www/rubygem-ramaze/Makefile,v 1.9 2012/11/17 06:03:04 svnexp Exp $
#
# note, innate version is typically an exact requirement

PORTNAME=	ramaze
PORTVERSION=	2011.10.23
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ramaze is a simple and modular web framework

RUN_DEPENDS=	rubygem-innate>=2010.03:${PORTSDIR}/www/rubygem-innate

PLIST_FILES=	bin/ramaze

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
