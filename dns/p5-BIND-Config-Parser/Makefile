# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: dns/p5-BIND-Config-Parser/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	BIND-Config-Parser
PORTVERSION=	0.01
CATEGORIES=	dns perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MATTD
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Parse BIND Config files

BUILD_DEPENDS=	p5-Parse-RecDescent>=0:${PORTSDIR}/devel/p5-Parse-RecDescent
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	BIND::Config::Parser.3

.include <bsd.port.mk>
