# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: devel/p5-MooseX-Types-Path-Class/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	MooseX-Types-Path-Class
PORTVERSION=	0.06
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Path::Class type library for Moose

RUN_DEPENDS=	p5-Moose>=2:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-Types>=0.04:${PORTSDIR}/devel/p5-MooseX-Types \
		p5-Path-Class>=0.16:${PORTSDIR}/devel/p5-Path-Class
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	MooseX::Types::Path::Class.3

.include <bsd.port.mk>
