# New ports collection makefile for:	Array Iterator
# Date created:				1 August 2004
# Whom:					Aaron Dalton <aaron@daltons.ca>
#
# $FreeBSD: ports/devel/p5-Array-Iterator/Makefile,v 1.8 2012/11/17 05:56:05 svnexp Exp $
#

PORTNAME=	Array-Iterator
PORTVERSION=	0.08
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	A set of array iterators

TEST_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception

PERL_MODBUILD=	yes

MAN3=		Array::Iterator.3 \
		Array::Iterator::BiDirectional.3 \
		Array::Iterator::Circular.3 \
		Array::Iterator::Reusable.3

.include <bsd.port.mk>
