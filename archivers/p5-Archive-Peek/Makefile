# New ports collection makefile for:	archivers/p5-Archive-Peek
# Date created:				01 September 2011
# Whom:					Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: archivers/p5-Archive-Peek/Makefile 324352 2013-08-07 13:20:32Z az $
#

PORTNAME=	Archive-Peek
PORTVERSION=	0.35
CATEGORIES=	archivers perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Peek into archives without extracting them

BUILD_DEPENDS=	p5-Archive-Tar>=0:${PORTSDIR}/archivers/p5-Archive-Tar \
		p5-Archive-Zip>=0:${PORTSDIR}/archivers/p5-Archive-Zip \
		p5-Moose>=0:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-Types-Path-Class>=0:${PORTSDIR}/devel/p5-MooseX-Types-Path-Class
RUN_DEPENDS:=	${BUILD_DEPENDS}

TEST_DEPENDS=	p5-Test-Pod>=1.14:${PORTSDIR}/devel/p5-Test-Pod

USES=		perl5
USE_PERL5=	configure

MAN3=		Archive::Peek.3

regression-test: build
	cd ${WRKSRC}/ && ${MAKE} test

.include <bsd.port.mk>
