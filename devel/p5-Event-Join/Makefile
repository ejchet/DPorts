# New ports collection makefile for:	p5-Event-Join
# Date created:	   24 Mar 2010
# Whom:		   Denis Pokataev <catone@cpan.org>
#
# $FreeBSD: ports/devel/p5-Event-Join/Makefile,v 1.5 2012/11/17 05:56:14 svnexp Exp $
#

PORTNAME=	Event-Join
PORTVERSION=	0.06
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	catone@cpan.org
COMMENT=	Join multiple "events" into one

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Moose>=0.94:${PORTSDIR}/devel/p5-Moose
RUN_DEPENDS:=	${BUILD_DEPENDS}

TEST_DEPENDS=	p5-Test-Exception>0:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Test-use-ok>0:${PORTSDIR}/devel/p5-Test-use-ok

PERL_CONFIGURE=	yes

MAN3=		Event::Join.3

.include <bsd.port.mk>
