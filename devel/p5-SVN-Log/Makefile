# Created by: Yuan-Chung Hsiao <ychsiao@ychsiao.org>
# $FreeBSD: devel/p5-SVN-Log/Makefile 319461 2013-05-31 01:46:04Z miwi $

PORTNAME=	SVN-Log
PORTVERSION=	0.03
PORTREVISION=	5
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ychsiao@ychsiao.org
COMMENT=	SVN::Log - Extract change logs from a Subversion server

BUILD_DEPENDS=	p5-subversion>=0:${PORTSDIR}/devel/p5-subversion \
		p5-Test-Simple>=0:${PORTSDIR}/devel/p5-Test-Simple
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes

MAN3=	SVN::Log.3

.include <bsd.port.mk>
