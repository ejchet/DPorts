# Created by: Mathieu Arnold <m@absolight.net>
# $FreeBSD: devel/p5-B-Deobfuscate/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	B-Deobfuscate
PORTVERSION=	0.20
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Extension to B::Deparse for use in de-obfuscating source code

RUN_DEPENDS=	p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML \
		p5-B-Keywords>=0:${PORTSDIR}/devel/p5-B-Keywords
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		B::Deobfuscate.3 B::Deobfuscate::Dict::Flowers.3 B::Deobfuscate::Dict::PGPHashWords.3

.include <bsd.port.mk>
