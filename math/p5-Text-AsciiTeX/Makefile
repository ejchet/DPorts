# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: math/p5-Text-AsciiTeX/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Text-AsciiTeX
PORTVERSION=	0.05
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Convert (La)TeX formulas to ASCII art

BUILD_DEPENDS=	p5-ExtUtils-CBuilder>=0:${PORTSDIR}/devel/p5-ExtUtils-CBuilder
RUN_DEPENDS=	p5-parent>=0:${PORTSDIR}/devel/p5-parent

USES=		perl5
USE_PERL5=	modbuild

MAN3=	Text::AsciiTeX.3 Text::AsciiTeX::Syntax.3

.include <bsd.port.mk>
