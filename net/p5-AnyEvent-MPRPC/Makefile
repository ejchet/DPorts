# $FreeBSD: net/p5-AnyEvent-MPRPC/Makefile 318554 2013-05-19 22:32:31Z kuriyama $

PORTNAME=	AnyEvent-MPRPC
PORTVERSION=	0.20
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for simple TCP-based MPRPC client/server

RUN_DEPENDS=	\
	p5-Any-Moose>=0.13:${PORTSDIR}/devel/p5-Any-Moose \
	p5-AnyEvent>=5.261:${PORTSDIR}/devel/p5-AnyEvent \
	p5-Data-MessagePack>=0.34:${PORTSDIR}/devel/p5-Data-MessagePack \
	p5-Data-MessagePack-Stream>=0.05:${PORTSDIR}/devel/p5-Data-MessagePack-Stream \
	p5-AnyEvent-MessagePack>=0.19:${PORTSDIR}/devel/p5-AnyEvent-MessagePack
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-Test-TCP>=0:${PORTSDIR}/devel/p5-Test-TCP

PERL_CONFIGURE=	yes

MAN3=	AnyEvent::MPRPC.3 \
	AnyEvent::MPRPC::Client.3 \
	AnyEvent::MPRPC::CondVar.3 \
	AnyEvent::MPRPC::Server.3

.include <bsd.port.mk>
