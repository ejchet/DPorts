# New ports collection makefile for:	www/p5-Catalyst-Plugin-Session-FastMmap
# Date created:				08 May 2005
# Whom:					Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: www/p5-Catalyst-Plugin-Session-FastMmap/Makefile 324352 2013-08-07 13:20:32Z az $
#

PORTNAME=	Catalyst-Plugin-Session-FastMmap
PORTVERSION=	0.13
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:BOBTFISH
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	FastMmap sessions for Catalyst

BUILD_DEPENDS=	p5-Cache-FastMmap>0:${PORTSDIR}/devel/p5-Cache-FastMmap \
		p5-Catalyst-Runtime>2.99:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Class-Accessor>0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-Class-Data-Inheritable>0:${PORTSDIR}/devel/p5-Class-Data-Inheritable \
		p5-MRO-Compat>0:${PORTSDIR}/devel/p5-MRO-Compat \
		p5-URI-Find>0:${PORTSDIR}/textproc/p5-URI-Find \
		p5-URI>0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Catalyst::Plugin::Session::FastMmap.3

regression-test: build
	cd ${WRKSRC}/ && ${MAKE} test

.include <bsd.port.mk>
