# New ports collection makefile for:	DBICx-MapMaker
# Date created:	   			23 Oct 2008
# Whom:		   			Martin Wilke <miwi@FreeBSD.org>
#
# $FreeBSD: ports/databases/p5-DBICx-MapMaker/Makefile,v 1.12 2012/11/17 05:55:14 svnexp Exp $
#

PORTNAME=	DBICx-MapMaker
PORTVERSION=	0.03
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:JROCKWAY
PKGNAMEPREFIX=	p5-

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Perl 5 module to automatically create a DBIx::Class mapping table

RUN_DEPENDS=	p5-Moose>=0.39:${PORTSDIR}/devel/p5-Moose
BUILD_DEPENDS=	p5-DBIx-Class>=0.07003:${PORTSDIR}/databases/p5-DBIx-Class \
		p5-DBICx-TestDatabase>=0.02:${PORTSDIR}/databases/p5-DBICx-TestDatabase \
		p5-Moose>=0.39:${PORTSDIR}/devel/p5-Moose
TEST_DEPENDS=	p5-Test-use-ok>=0:${PORTSDIR}/devel/p5-Test-use-ok

PERL_CONFIGURE=	yes

MAN3=		DBICx::MapMaker.3

.include <bsd.port.mk>
