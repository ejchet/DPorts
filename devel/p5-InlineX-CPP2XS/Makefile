# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: devel/p5-InlineX-CPP2XS/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	InlineX-CPP2XS
PORTVERSION=	0.24
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SISYPHUS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Convert from Inline C++ code to XS

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Inline>=0.50:${PORTSDIR}/devel/p5-Inline \
		p5-Inline-CPP>=0.39:${PORTSDIR}/devel/p5-Inline-CPP
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Warn>=0.24:${PORTSDIR}/devel/p5-Test-Warn

USES=		perl5
USE_PERL5=	configure

MAN3=		InlineX::CPP2XS.3 InlineX::CPP2XS-Cookbook.3

.include <bsd.port.mk>
