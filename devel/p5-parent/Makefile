# New ports collection makefile for:	parent
# Date created:				24 Oct 2007
# Whom:					Rong-En Fan <rafan@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-parent/Makefile,v 1.11 2012/11/17 05:56:36 svnexp Exp $
#

PORTNAME=	parent
PORTVERSION=	0.225
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:CORION
PKGNAMEPREFIX=	p5-

MAINTAINER=	rafan@FreeBSD.org
COMMENT=	Establish an ISA relationship with base classes at compile time

PERL_CONFIGURE=	yes

MAN3=		parent.3

regression-test:
	cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
