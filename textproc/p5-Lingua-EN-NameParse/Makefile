# Created by: Seamus Venasse <svenasse@polaris.ca>
# $FreeBSD: textproc/p5-Lingua-EN-NameParse/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Lingua-EN-NameParse
PORTVERSION=	1.31
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl routines for manipulating a person's name

BUILD_DEPENDS=	p5-Parse-RecDescent>=0:${PORTSDIR}/devel/p5-Parse-RecDescent
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Lingua::EN::NameParse.3 \
		Lingua::EN::NameParse::Grammar.3

.include <bsd.port.mk>
