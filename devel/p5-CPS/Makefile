# Created by: Frederic Culot <culot@FreeBSD.org>
# $FreeBSD: ports/devel/p5-CPS/Makefile,v 1.11 2013/01/21 09:43:35 svnexp Exp $

PORTNAME=	CPS
PORTVERSION=	0.18
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:PEVANS
PKGNAMEPREFIX=	p5-

MAINTAINER=	culot@FreeBSD.org
COMMENT=	Manage flow of control in Continuation-Passing Style

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Future>0:${PORTSDIR}/devel/p5-Future
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Identity>0:${PORTSDIR}/devel/p5-Test-Identity \
		p5-Test-Pod>=1:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Refcount>0:${PORTSDIR}/devel/p5-Test-Refcount \
		p5-Test-Fatal>0:${PORTSDIR}/devel/p5-Test-Fatal

PERL_MODBUILD=	yes

MAN3=		CPS.3 \
		CPS::Functional.3 \
		CPS::Future.3 \
		CPS::Governor.3 \
		CPS::Governor::Deferred.3 \
		CPS::Governor::Simple.3

.include <bsd.port.mk>
