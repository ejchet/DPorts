# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: devel/p5-Inline-ASM/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Inline-ASM
PORTVERSION=	0.03
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Write Perl Subroutines in assembler

BUILD_DEPENDS=	p5-Inline>=0:${PORTSDIR}/devel/p5-Inline
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure
CONFIGURE_ARGS=	</dev/null

MAN3=		Inline::ASM.3

.include <bsd.port.mk>
