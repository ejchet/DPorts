# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: devel/p5-MooseX-IOC/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	MooseX-IOC
PORTVERSION=	0.03
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Moose attributes with IOC integration

BUILD_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception \
		p5-IOC>=0:${PORTSDIR}/devel/p5-IOC \
		p5-Moose>=0:${PORTSDIR}/devel/p5-Moose
RUN_DEPENDS=	p5-IOC>=0:${PORTSDIR}/devel/p5-IOC \
		p5-Moose>=0:${PORTSDIR}/devel/p5-Moose

USES=		perl5
USE_PERL5=	configure

MAN3=		MooseX::IOC.3 MooseX::IOC::Meta::Attribute.3

.include <bsd.port.mk>
