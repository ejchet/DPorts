# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: devel/p5-ExtUtils-MakeMaker-Coverage/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	ExtUtils-MakeMaker-Coverage
PORTVERSION=	0.05
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Add a Makefile target to determine test coverage using Devel::Cover

BUILD_DEPENDS=	p5-Devel-Cover>=0:${PORTSDIR}/devel/p5-Devel-Cover \
		p5-Object-Accessor>=0:${PORTSDIR}/devel/p5-Object-Accessor \
		p5-Test-Simple>=0:${PORTSDIR}/devel/p5-Test-Simple
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		ExtUtils::MakeMaker::Coverage.3

.include <bsd.port.mk>
