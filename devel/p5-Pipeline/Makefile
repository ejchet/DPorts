# New ports collection makefile for:	p5-Pipeline
# Date Created:				11 June 2006
# Whom:					Rouslan Iskhakov <rouslan@rshell.net>
#
# $FreeBSD: ports/devel/p5-Pipeline/Makefile,v 1.9 2012/11/17 05:56:26 svnexp Exp $
#

PORTNAME=	Pipeline
PORTVERSION=	3.12
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:RCLAMP
PKGNAMEPREFIX=	p5-

MAINTAINER=	rouslan@rshell.net
COMMENT=	Pipeline - Generic pipeline interface

BUILD_DEPENDS=	p5-Class-ISA>=0:${PORTSDIR}/devel/p5-Class-ISA \
		p5-Error>=0:${PORTSDIR}/lang/p5-Error \
		p5-IO-Null>=0:${PORTSDIR}/devel/p5-IO-Null \
		p5-IO-String>=0:${PORTSDIR}/devel/p5-IO-String \
		p5-Data-UUID>=0:${PORTSDIR}/devel/p5-Data-UUID \
		p5-Data-Structure-Util>=0:${PORTSDIR}/devel/p5-Data-Structure-Util
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Pipeline::Segment.3 Pipeline::Store::ISA.3 Pipeline.3 \
		Pipeline::Segment::Async::Handler.3 Pipeline::Analyser.3 \
		Pipeline::Production.3 Pipeline::Store::Simple.3 \
		Pipeline::Segment::Async.3 Pipeline::Store.3 \
		Pipeline::Error::Construction.3 Pipeline::Dispatch.3 \
		Pipeline::Base.3 Pipeline::Segment::Async::Fork.3 \
		Pipeline::Error::Abstract.3 Pipeline::Dumper.3 \
		Pipeline::Error::AsyncResults.3 Pipeline::Segment::Tester.3 \
		Pipeline::Segment::Async::IThreads.3

.include <bsd.port.mk>
