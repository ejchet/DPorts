# Created by: Cheng-Lung Sung <clsung@FreeBSD.org>
# $FreeBSD: devel/rubygem-zentest/Makefile 319710 2013-06-02 18:52:12Z swills $

PORTNAME=	zentest
PORTVERSION=	4.9.2
PORTEPOCH=	1
CATEGORIES=	devel rubygems
MASTER_SITES=	RG
DISTNAME=	ZenTest-${PORTVERSION}

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby Unit Testing Utility

GEM_NAME=	${DISTNAME}

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/autotest \
		bin/multigem \
		bin/multiruby \
		bin/multiruby_setup \
		bin/unit_diff \
		bin/zentest

.include <bsd.port.mk>
