# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: devel/p5-Package-Variant/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Package-Variant
PORTVERSION=	1.001004
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Parameterizable packages

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Import-Into>=1:${PORTSDIR}/devel/p5-Import-Into \
		p5-Module-Runtime>=0.013:${PORTSDIR}/devel/p5-Module-Runtime
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Fatal>0:${PORTSDIR}/devel/p5-Test-Fatal

USES=		perl5
USE_PERL5=	configure

MAN3=		Package::Variant.3

.include <bsd.port.mk>
