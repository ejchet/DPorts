# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD: devel/p5-Contextual-Return/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Contextual-Return
PORTVERSION=	0.004.007
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DCONWAY
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:R}${PORTVERSION:E}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Create context-sensitive return values

BUILD_DEPENDS=	p5-Want>=0:${PORTSDIR}/devel/p5-Want
RUN_DEPENDS=	p5-Want>=0:${PORTSDIR}/devel/p5-Want

USES=		perl5
USE_PERL5=	configure

MAN3=		Contextual::Return.3 Contextual::Return::Failure.3

.include <bsd.port.mk>
