# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: devel/p5-Sub-Exporter-ForMethods/Makefile 324306 2013-08-06 08:50:49Z az $

PORTNAME=	Sub-Exporter-ForMethods
PORTVERSION=	0.100050
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	wen@FreeBSD.org
COMMENT=	Helper routines for using Sub::Exporter to build methods

RUN_DEPENDS=	p5-Sub-Name>=0:${PORTSDIR}/devel/p5-Sub-Name \
		p5-Sub-Exporter>=0.978:${PORTSDIR}/devel/p5-Sub-Exporter
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Sub::Exporter::ForMethods.3

.include <bsd.port.mk>
