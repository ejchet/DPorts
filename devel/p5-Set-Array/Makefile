# Created by: Alex Kapranoff <kappa@rambler-co.ru>
# $FreeBSD: devel/p5-Set-Array/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Set-Array
PORTVERSION=	0.29
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:RSAVAGE
PKGNAMEPREFIX=	p5-
EXTRACT_SUFX=	.tgz

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Arrays as objects with set operations

LICENSE=	ART10

BUILD_DEPENDS=	p5-Try-Tiny>=0.11:${PORTSDIR}/lang/p5-Try-Tiny \
		p5-Want>=0:${PORTSDIR}/devel/p5-Want
RUN_DEPENDS=	p5-Try-Tiny>=0.11:${PORTSDIR}/lang/p5-Try-Tiny \
		p5-Want>=0:${PORTSDIR}/devel/p5-Want
TEST_DEPENDS=	p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep \
		p5-Test-Pod>=0:${PORTSDIR}/devel/p5-Test-Pod

USES=		perl5
USE_PERL5=	modbuild

MAN3=		Set::Array.3

.include <bsd.port.mk>
