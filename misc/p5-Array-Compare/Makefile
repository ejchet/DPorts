# Created by: Seamus Venasse <svenasse@polaris.ca>
# $FreeBSD: misc/p5-Array-Compare/Makefile 324167 2013-08-02 17:11:34Z az $

PORTNAME=	Array-Compare
PORTVERSION=	2.02
CATEGORIES=	misc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DAVECROSS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl extension for comparing arrays

BUILD_DEPENDS=	p5-Moose>=0:${PORTSDIR}/devel/p5-Moose
RUN_DEPENDS=	p5-Moose>=0:${PORTSDIR}/devel/p5-Moose

TEST_DEPENDS=	p5-Test-NoWarnings>=0:${PORTSDIR}/devel/p5-Test-NoWarnings \
		p5-Test-Pod>=1:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=1:${PORTSDIR}/devel/p5-Test-Pod-Coverage

USES=		perl5
USE_PERL5=	configure

MAN3=		Array::Compare.3

.include <bsd.port.mk>
