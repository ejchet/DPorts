# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: devel/p5-MooseX-Async/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	MooseX-Async
PORTVERSION=	0.07
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	The Orphanange of Asynchronous Love Children

RUN_DEPENDS=	p5-Moose>=0.56:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-AttributeHelpers>=0.13:${PORTSDIR}/devel/p5-MooseX-AttributeHelpers
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	MooseX::Async.3 \
	MooseX::Async::Meta::Class.3 \
	MooseX::Async::Meta::Method::State.3

post-extract:
	@${RM} -f ${WRKSRC}/lib/MooseX/._Async.pm

.include <bsd.port.mk>
