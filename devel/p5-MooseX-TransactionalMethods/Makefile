# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: ports/devel/p5-MooseX-TransactionalMethods/Makefile,v 1.3 2013/02/08 02:51:26 svnexp Exp $

PORTNAME=	MooseX-TransactionalMethods
PORTVERSION=	0.008
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Syntax sugar for transactional methods

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Moose>=1.21:${PORTSDIR}/devel/p5-Moose \
		p5-aliased>=0:${PORTSDIR}/devel/p5-aliased
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		MooseX::Meta::Method::Transactional.3 \
		MooseX::TransactionalMethods.3

.include <bsd.port.mk>
