# $FreeBSD: devel/bsdbuild/Makefile 324006 2013-07-31 06:47:15Z bapt $

PORTNAME=	bsdbuild
PORTVERSION=	3.0
CATEGORIES=	devel
MASTER_SITES=	http://stable.hypertriton.com/bsdbuild/

MAINTAINER=	bapt@FreeBSD.org
COMMENT=	BSD-licensed portable build system

USES=		perl5
GNU_CONFIGURE=	yes

LICENSE=	BSD

CONFIGURE_ARGS=	--with-catman=no

MAN1=	uman.1 \
	man2mediawiki.1 \
	man2wiki.1 \
	mkconfigure.1 \
	mkify.1

MAN5=	build.www.mk.5 \
	build.proj.mk.5 \
	build.prog.mk.5 \
	build.lib.mk.5 \
	build.dep.mk.5 \
	build.common.mk.5

.include <bsd.port.mk>
