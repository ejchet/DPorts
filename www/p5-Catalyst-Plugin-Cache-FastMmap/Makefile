# Ports collection makefile for:	p5-Catalyst-Plugin-Cache-FastMmap
# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: www/p5-Catalyst-Plugin-Cache-FastMmap/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Catalyst-Plugin-Cache-FastMmap
PORTVERSION=	0.9
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Mmap cache for Catalyst

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Cache-FastMmap>=0:${PORTSDIR}/devel/p5-Cache-FastMmap \
		p5-Catalyst-Runtime>=5.7000:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Class-Data-Inheritable>0:${PORTSDIR}/devel/p5-Class-Data-Inheritable
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Catalyst::Plugin::Cache::FastMmap.3

.include <bsd.port.mk>
