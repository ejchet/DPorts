# Created by: chinsan
# $FreeBSD: devel/p5-Perl6-Rules/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Perl6-Rules
PORTVERSION=	0.03
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Implements (most of) the Perl 6 regex syntax

BUILD_DEPENDS=	p5-Attribute-Handlers>=0:${PORTSDIR}/devel/p5-Attribute-Handlers \
		p5-Filter-Simple>=0:${PORTSDIR}/textproc/p5-Filter-Simple
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Perl6::Rules.3

.include <bsd.port.mk>
