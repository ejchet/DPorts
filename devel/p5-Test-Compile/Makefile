# Created by: Cezary Morga <cm@therek.net>
# $FreeBSD: ports/devel/p5-Test-Compile/Makefile,v 1.12 2013/02/22 17:43:02 svnexp Exp $

PORTNAME=	Test-Compile
PORTVERSION=	0.24
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:EGILES
PKGNAMEPREFIX=	p5-

MAINTAINER=	culot@FreeBSD.org
COMMENT=	Check whether Perl module files compile correctly

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Devel-CheckOS>=0:${PORTSDIR}/devel/p5-Devel-CheckOS \
		p5-UNIVERSAL-require>=0:${PORTSDIR}/devel/p5-UNIVERSAL-require
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Test::Compile.3 Test::Compile::Internal.3

.include <bsd.port.mk>
