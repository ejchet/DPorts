# Created by: chinsan
# $FreeBSD: devel/p5-Perl6-Export-Attrs/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Perl6-Export-Attrs
PORTVERSION=	0.0.3
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	The Perl 6 'is export(...)' trait as a Perl 5 attribute

BUILD_DEPENDS=	p5-Attribute-Handlers>=0:${PORTSDIR}/devel/p5-Attribute-Handlers \
		p5-version>=0:${PORTSDIR}/devel/p5-version
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Perl6::Export::Attrs.3

.include <bsd.port.mk>
