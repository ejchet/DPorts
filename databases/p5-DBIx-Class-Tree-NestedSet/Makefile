# New ports collection makefile for:	DBIx::Class::Tree::NestedSet
# Date created:		17 Mar 2011
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/databases/p5-DBIx-Class-Tree-NestedSet/Makefile,v 1.5 2012/11/17 05:55:15 svnexp Exp $
#

PORTNAME=	DBIx-Class-Tree-NestedSet
PORTVERSION=	0.10
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to manage trees of data using the nested set model

RUN_DEPENDS=	\
	p5-DBIx-Class>=0.08:${PORTSDIR}/databases/p5-DBIx-Class
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-DBICx-TestDatabase>=0:${PORTSDIR}/databases/p5-DBICx-TestDatabase \
		p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception

PERL_CONFIGURE=	yes

MAN3=	DBIx::Class::Tree::NestedSet.3

.include <bsd.port.mk>
