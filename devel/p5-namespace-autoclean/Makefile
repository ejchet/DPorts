# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: devel/p5-namespace-autoclean/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	namespace-autoclean
PORTVERSION=	0.13
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:BOBTFISH
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Keep imports out of your namespace

BUILD_DEPENDS=	p5-B-Hooks-EndOfScope>=0:${PORTSDIR}/devel/p5-B-Hooks-EndOfScope \
		p5-Moose>=2:${PORTSDIR}/devel/p5-Moose \
		p5-namespace-clean>=0.20:${PORTSDIR}/devel/p5-namespace-clean
RUN_DEPENDS=	p5-B-Hooks-EndOfScope>=0:${PORTSDIR}/devel/p5-B-Hooks-EndOfScope \
		p5-Moose>=2:${PORTSDIR}/devel/p5-Moose \
		p5-namespace-clean>=0.20:${PORTSDIR}/devel/p5-namespace-clean

USES=		perl5
USE_PERL5=	configure

MAN3=		namespace::autoclean.3

.include <bsd.port.mk>
