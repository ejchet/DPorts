# Created by: Erwin Lansing <erwin@FreeBSD.org>
# $FreeBSD: devel/p5-Test-Exception/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Test-Exception
PORTVERSION=	0.32
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Test::Exception - test functions for exception based code

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

RUN_DEPENDS=	p5-Sub-Uplevel>=0.18:${PORTSDIR}/devel/p5-Sub-Uplevel
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Test::Exception.3

.include <bsd.port.mk>
