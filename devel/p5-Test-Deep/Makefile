# Created by: Alex Kapranoff <alex@kapranoff.ru>
# $FreeBSD: devel/p5-Test-Deep/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Test-Deep
PORTVERSION=	0.110
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Test data structures for differences deeply

BUILD_DEPENDS=	p5-Test-NoWarnings>=0.02:${PORTSDIR}/devel/p5-Test-NoWarnings \
		p5-Test-Tester>=0.04:${PORTSDIR}/devel/p5-Test-Tester
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure
REINPLACE_ARGS=	-i ''

MAN3=		Test::Deep.3 Test::Deep::NoTest.3

post-patch:
	@${REINPLACE_CMD} -e '/return (/s/;/);/' ${WRKSRC}/lib/Test/Deep/RegexpOnly.pm

.include <bsd.port.mk>
