# Created by: will
# $FreeBSD: math/p5-AI-Perceptron/Makefile 324175 2013-08-02 21:38:09Z mat $

PORTNAME=	AI-Perceptron
PORTVERSION=	1.0
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl module for introducing to internal operations of neural networks

BUILD_DEPENDS=	p5-accessors>=0:${PORTSDIR}/devel/p5-accessors
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=		AI::Perceptron.3

.include <bsd.port.mk>
