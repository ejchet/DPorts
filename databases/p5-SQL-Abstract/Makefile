# Created by: Dominic Mitchell
# $FreeBSD: databases/p5-SQL-Abstract/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	SQL-Abstract
PORTVERSION=	1.74
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl extension to generate SQL from Perl data structures

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Class-Accessor-Grouped>=0.10005:${PORTSDIR}/devel/p5-Class-Accessor-Grouped \
		p5-Getopt-Long-Descriptive>=0.091:${PORTSDIR}/devel/p5-Getopt-Long-Descriptive \
		p5-Hash-Merge>=0.12:${PORTSDIR}/textproc/p5-Hash-Merge
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Warn>=0:${PORTSDIR}/devel/p5-Test-Warn \
		p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception

USES=		perl5
USE_PERL5=	configure

MAN3=		DBIx::Class::Storage::Debug::PrettyPrint.3 \
		SQL::Abstract.3 \
		SQL::Abstract::Test.3 \
		SQL::Abstract::Tree.3

.include <bsd.port.mk>
