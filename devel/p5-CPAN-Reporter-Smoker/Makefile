# New ports collection makefile for:	p5-CPAN-Reporter-Smoker
# Date created:		2011-02-04
# Whom:			Steve Wills <swills@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-CPAN-Reporter-Smoker/Makefile,v 1.6 2012/11/17 05:56:05 svnexp Exp $
#

PORTNAME=	CPAN-Reporter-Smoker
PORTVERSION=	0.24
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DAGOLDEN
PKGNAMEPREFIX=	p5-

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Turnkey CPAN Testers smoking

BUILD_DEPENDS=	p5-CPAN-Checksums>0:${PORTSDIR}/devel/p5-CPAN-Checksums \
		p5-CPAN-Reporter>0:${PORTSDIR}/devel/p5-CPAN-Reporter \
		p5-Term-Title>0:${PORTSDIR}/devel/p5-Term-Title
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=		CPAN::Reporter::Smoker.3
PERL_CONFIGURE=	yes

.include <bsd.port.mk>
