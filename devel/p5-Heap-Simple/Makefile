# New ports collection makefile for:	Heap::Simple
# Date created:				26 August 2004
# Whom:					Aaron Dalton <aaron@daltons.ca>
#
# $FreeBSD: devel/p5-Heap-Simple/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	Heap-Simple
PORTVERSION=	0.13
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Fast and easy to use classic heaps

USES=		perl5
USE_PERL5=	configure

MAN3=		Heap::Simple.3

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
