# $FreeBSD: devel/p5-Test-TCP/Makefile 324518 2013-08-10 14:04:36Z kuriyama $

PORTNAME=	Test-TCP
PORTVERSION=	2.00
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:TOKUHIROM
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for testing TCP program

RUN_DEPENDS=	\
	p5-Test-SharedFork>=0.19:${PORTSDIR}/devel/p5-Test-SharedFork
BUILD_DEPENDS:=	${RUN_DEPENDS}
# XXX: test t/05_sigint.t fails.  Check it later.

USES=	perl5
USE_PERL5=	modbuild

MAN3=	Net::EmptyPort.3 \
	Test::TCP.3 \
	Test::TCP::CheckPort.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501400
TEST_DEPENDS=	p5-Test-Simple>=0.98:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
