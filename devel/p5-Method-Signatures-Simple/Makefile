# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: devel/p5-Method-Signatures-Simple/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Method-Signatures-Simple
PORTVERSION=	1.07
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:RHESA
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Basic method declarations with signatures, without source filters

BUILD_DEPENDS=	p5-Devel-Declare>=0:${PORTSDIR}/devel/p5-Devel-Declare
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Method::Signatures::Simple.3

.include <bsd.port.mk>
