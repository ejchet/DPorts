# Created by: Philip M. Gollucci
# $FreeBSD: devel/p5-Const-Fast/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Const-Fast
PORTVERSION=	0.014
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:LEONT
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Facility for creating read-only scalars, arrays, and hashes

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS:=	${RUN_DEPENDS} \
		p5-Module-Build-Tiny>=0.021:${PORTSDIR}/devel/p5-Module-Build-Tiny
RUN_DEPENDS=	p5-Sub-Exporter>=0:${PORTSDIR}/devel/p5-Sub-Exporter \
		p5-Sub-Exporter-Progressive>=0.001.007:${PORTSDIR}/devel/p5-Sub-Exporter-Progressive
TEST_DEPENDS=	p5-Test-Exception>=0.29:${PORTSDIR}/devel/p5-Test-Exception

USES=		perl5
USE_PERL5=	modbuild

MAN3=		Const::Fast.3

.include <bsd.port.mk>
