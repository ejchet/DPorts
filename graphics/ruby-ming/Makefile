# New ports collection makefile for:	Ruby/Ming
# Date created:		16 Oct 2000
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/graphics/ruby-ming/Makefile,v 1.33 2012/11/17 05:58:21 svnexp Exp $

PORTNAME=	ming
PORTVERSION=	0.4.3.${RUBY_MING_VERSION}
PORTREVISION=	2
CATEGORIES+=	graphics ruby
MASTER_SITES=	RF
MASTER_SITE_SUBDIR=	mingruby
PKGNAMEPREFIX?=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME}-ruby-${RUBY_MING_VERSION}
DIST_SUBDIR=	ruby

MAINTAINER=	don@na.rim.or.jp
COMMENT=	Yet another Ming module for Ruby

LIB_DEPENDS?=	ming.5:${PORTSDIR}/graphics/ming

RUBY_MING_VERSION=	0.2.1

USE_RUBY=	yes
USE_RUBY_SETUP=	yes
CONFIGURE_ARGS=	-- --with-ming-include=${PREFIX}/include/ming --with-ming-lib=${PREFIX}/lib

WRKSRC=		${WRKDIR}/${PORTNAME}-ruby

DOCS=	ChangeLog INSTALL LGPL NEWS README TODO

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${RUBY_MODEXAMPLESDIR}
	(cd ${WRKSRC}/examples/ && ${COPYTREE_SHARE} \* ${RUBY_MODEXAMPLESDIR})
	${MKDIR} ${RUBY_MODDOCDIR}
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${RUBY_MODDOCDIR}/
.endfor
.endif

.include <bsd.port.mk>
